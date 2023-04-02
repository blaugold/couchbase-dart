import 'dart:async';
import 'dart:io';

import 'authenticator.dart';
import 'bucket.dart';
import 'connection.dart';
import 'connection_spec.dart';
import 'diagnostics.dart';
import 'general.dart';
import 'message_basic.dart';
import 'message_basic.dart' as message_basic;
import 'transcoder.dart';
import 'version.g.dart';

/// Default timeout options for operations performed against a cluster.
///
/// {@category Core}
class TimeoutConfig {
  const TimeoutConfig({
    this.kvTimeout = const Duration(milliseconds: 2500),
    this.kvDurableTimeout = const Duration(milliseconds: 10000),
    this.viewTimeout = const Duration(milliseconds: 75000),
    this.queryTimeout = const Duration(milliseconds: 75000),
    this.analyticsTimeout = const Duration(milliseconds: 75000),
    this.searchTimeout = const Duration(milliseconds: 75000),
    this.managementTimeout = const Duration(milliseconds: 75000),
  });

  /// Default timeout for key-value operations.
  final Duration kvTimeout;

  /// Default timeout for durable key-value operations.
  final Duration kvDurableTimeout;

  /// Default timeout for view operations.
  final Duration viewTimeout;

  /// Default timeout for query operations.
  final Duration queryTimeout;

  /// Default timeout for analytics operations.
  final Duration analyticsTimeout;

  /// Default timeout for search operations.
  final Duration searchTimeout;

  /// Default timeout for management operations.
  final Duration managementTimeout;
}

/// Security options for connecting to a cluster.
///
/// {@category Core}
class SecurityConfig {
  SecurityConfig({
    this.trustStorePath,
  });

  /// The path to a trust store file to be used when validating the authenticity
  /// of the server when connecting over SSL.
  final String? trustStorePath;
}

/// DNS options for connecting to a cluster.
///
/// {@category Core}
/// {@category Volatile}
class DnsConfig {
  DnsConfig({
    required this.nameServer,
    required this.port,
    this.dnsSrvTimeout = const Duration(milliseconds: 500),
  });

  /// The name server to be used for DNS queries when connecting.
  final String nameServer;

  /// The port to be used for DNS queries when connecting.
  final int port;

  /// The default timeout for DNS SRV operations.
  final Duration dnsSrvTimeout;
}

/// Options for connecting to a cluster.
///
/// See [Cluster.connect].
///
/// {@category Core}
class ClusterOptions {
  ClusterOptions({
    this.username,
    this.password,
    this.authenticator,
    this.security,
    this.timeouts = const TimeoutConfig(),
    this.transcoder = const DefaultTranscoder(),
    this.dnsConfig,
    this.configProfile,
  }) {
    if (username != null && password == null) {
      throw ArgumentError.value(
        password,
        'password',
        'must be provided if username is provided',
      );
    }
    if (username == null && password != null) {
      throw ArgumentError.value(
        username,
        'username',
        'must be provided if password is provided',
      );
    }
    if (username != null && authenticator != null) {
      throw ArgumentError.value(
        authenticator,
        'authenticator',
        'cannot be provided if username and password are provided',
      );
    }
  }

  /// Username to use for an implicitly created [PasswordAuthenticator]
  /// used for authentication with the cluster.
  final String? username;

  /// Password to be used in concert with [username] for authentication.
  final String? password;

  /// Authenticator to use when connecting to the cluster.
  final Authenticator? authenticator;

  /// Security config for connecting to the cluster.
  final SecurityConfig? security;

  /// Default timeout options for operations performed against the cluster.
  final TimeoutConfig timeouts;

  /// Default transcoder to use when encoding or decoding document values.
  final Transcoder transcoder;

  // TODO: Implement transactions.
  /// Options for transactions.
  // final TransactionsConfig? transactions;

  /// DNS config for connecting to the cluster.
  ///
  /// {@category Volatile}
  final DnsConfig? dnsConfig;

  /// Config profile to use for the cluster.
  ///
  /// {@category Volatile}
  final String? configProfile;
}

/// Exposes the operations which are available to be performed against a
/// cluster.
///
/// Namely the ability to access [Bucket]s as well as performing management
/// operations against the cluster.
///
/// {@category Core}
class Cluster {
  Cluster._(this._connectionString, this._options) : _connection = Connection();

  /// Connects to a cluster using the provided [connectionString] and
  /// [options].
  static Future<Cluster> connect(
    String connectionString, [
    ClusterOptions? options,
  ]) async {
    final cluster = Cluster._(connectionString, options ?? ClusterOptions());
    await cluster._connect();
    return cluster;
  }

  final String _connectionString;
  final ClusterOptions _options;
  final Connection _connection;
  final Set<String> _openBuckets = {};

  /// Disconnects and this [Cluster], cleaning up all resources associated with
  /// it.
  Future<void> close() => _connection.close();

  /// Returns a [Bucket] which can be used to perform operations against
  /// a specific bucket.
  Bucket bucket(String name) {
    if (!_openBuckets.contains(name)) {
      _openBuckets.add(name);
      unawaited(
        _connection.openBucket(name).onError(
          (error, _) {
            // TODO: Move to log framework.
            // ignore: avoid_print
            print('Error opening bucket $name: $error');
          },
        ),
      );
    }
    return Bucket(name: name, cluster: this);
  }

  /// Returns a diagnostics report about the currently active connections with
  /// the cluster.
  ///
  /// Includes information about remote and local addresses, last activity,
  /// and other diagnostics information.
  Future<DiagnosticsResult> diagnostics([DiagnosticsOptions? options]) async {
    final response = await _connection.diagnostics(reportId: options?.reportId);
    return response.toApi();
  }

  /// Performs a ping operation against the cluster.
  ///
  /// Pinging the services which are specified (or all services if none are
  /// specified). Returns a report which describes the outcome of the ping
  /// operations which were performed.
  Future<PingResult> ping([PingOptions? options]) async {
    final response = await _connection.ping(
      reportId: options?.reportId,
      services: options?.serviceTypes
          ?.map((serviceType) => serviceType.toMessage())
          .toSet(),
      bucketName: options?.bucket,
      // TODO: Send to C++ client.
      // timeout: options?.timeout,
    );
    return response.toApi();
  }

  Future<void> _connect() async {
    final authenticator = _options.authenticator ??
        PasswordAuthenticator(
          username: _options.username ?? '',
          password: _options.password ?? '',
        );

    var connectionSpec = ConnectionSpec.parse(_connectionString);

    connectionSpec = connectionSpec.addOption(
      'user_agent_extra',
      _userAgent(),
    );

    final trustStorePath = _options.security?.trustStorePath;
    if (trustStorePath != null) {
      connectionSpec =
          connectionSpec.addOption('trust_certificate', trustStorePath);
    }

    try {
      await _connection.open(
        connectionSpec.toString(),
        authenticator.toMessage(),
        _options.dnsConfig?.toMessage(),
      );
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      // Clean up the connection if it failed to open.
      await _connection.close();
      rethrow;
    }
  }
}

extension ClusterInternal on Cluster {
  Transcoder get transcoder => _options.transcoder;
  TimeoutConfig get timeouts => _options.timeouts;
  Connection get connection => _connection;
}

extension on Authenticator {
  ClusterCredentials toMessage() {
    final self = this;
    if (self is PasswordAuthenticator) {
      return ClusterCredentials(
        username: self.username,
        password: self.password,
        allowedSaslMechanisms: self.allowedSaslMechanisms,
        certificatePath: '',
        keyPath: '',
      );
    } else if (self is CertificateAuthenticator) {
      return ClusterCredentials(
        username: '',
        password: '',
        allowedSaslMechanisms: [],
        certificatePath: self.certificatePath,
        keyPath: self.keyPath,
      );
    } else {
      throw UnimplementedError();
    }
  }
}

extension on DnsConfig {
  message_basic.DnsConfig toMessage() => message_basic.DnsConfig(
        nameServer: nameServer,
        port: port,
        timeout: dnsSrvTimeout,
      );
}

String _userAgent() =>
    'couchbase-dart/$couchbaseDartVersion (Dart/${Platform.version})';
