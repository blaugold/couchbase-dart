import 'dart:convert';

import 'cluster.dart';
import 'general.dart';
import 'message.g.dart' as message;

/// The status of an an endpoint in a diagnostics report.
///
/// {@category Diagnostics}
enum EndpointState {
  /// Indicates the endpoint is disconnected.
  disconnected,

  /// Indicates the endpoint is still connecting.
  connecting,

  /// Indicates the endpoint is connected.
  connected,

  /// Indicates the endpoint is disconnecting.
  disconnecting,
}

extension MessageEndpointState on message.EndpointState {
  EndpointState toApi() {
    switch (this) {
      case message.EndpointState.disconnected:
        return EndpointState.disconnected;
      case message.EndpointState.connecting:
        return EndpointState.connecting;
      case message.EndpointState.connected:
        return EndpointState.connected;
      case message.EndpointState.disconnecting:
        return EndpointState.disconnecting;
    }
  }
}

/// The status of an an endpoint in a ping report.
///
/// {@category Diagnostics}
enum PingState {
  /// Indicates the endpoint was pinged successfully.
  ok,

  /// Indicates the endpoint timed out during the ping.
  timeout,

  /// Indicates an error occurred trying to ping the endpoint.
  error,
}

extension MessagePingState on message.PingState {
  PingState toApi() {
    switch (this) {
      case message.PingState.ok:
        return PingState.ok;
      case message.PingState.timeout:
        return PingState.timeout;
      case message.PingState.error:
        return PingState.error;
    }
  }
}

/// A single endpoint in a [PingResult].
///
/// {@category Diagnostics}
class PingEndpoint {
  const PingEndpoint({
    required this.type,
    required this.id,
    required this.remote,
    required this.local,
    required this.latency,
    required this.state,
    this.bucket,
    this.error,
  });

  // The type of service this endpoint refers to.
  final ServiceType type;

  // The unique identifier for this endpoint.
  final String id;

  // The remote address of this endpoint.
  final String remote;

  // The local address of this endpoint.
  final String local;

  // The latency of the ping to the endpoint.
  final Duration latency;

  // The current state of this endpoint.
  final PingState state;

  // The bucket this endpoint is connected to.
  final String? bucket;

  // Information about errors that occurred during pinging.
  final Object? error;
}

extension MessagePingEndpoint on message.DiagEndpointPingInfo {
  PingEndpoint toApi() {
    return PingEndpoint(
      type: type.toApi(),
      id: id,
      remote: remote,
      local: local,
      latency: latency,
      state: state.toApi(),
      bucket: bucket,
      error: error,
    );
  }
}

/// The output of [Cluster.ping].
///
/// {@category Diagnostics}
class PingResult {
  const PingResult({
    required this.version,
    required this.id,
    required this.sdk,
    required this.services,
  });

  /// The version number of this report.
  final int version;

  /// The unique identifier for this report.
  final String id;

  /// The name of the SDK which generated this report.
  final String sdk;

  /// A list of service endpoints and their ping results.
  final Map<ServiceType, List<PingEndpoint>> services;
}

extension MessagePingResult on message.DiagPingResult {
  PingResult toApi() {
    return PingResult(
      version: version,
      id: id,
      sdk: sdk,
      services: services.map((serviceType, endpoints) {
        return MapEntry(
          serviceType.toApi(),
          endpoints.map((endpoint) => endpoint.toApi()).toList(),
        );
      }),
    );
  }
}

/// The options available for [Cluster.ping].
///
/// {@category Diagnostics}
class PingOptions {
  const PingOptions({
    this.reportId,
    this.serviceTypes,
    this.bucket,
    this.timeout,
  });

  /// A unique identifier for the report generated by this operation.
  final String? reportId;

  /// The services which should be pinged.
  final List<ServiceType>? serviceTypes;

  /// The name of the bucket to ping.
  final String? bucket;

  /// The timeout for this operation, represented in milliseconds.
  final Duration? timeout;

  /// Creates a copy of this [PingOptions] with the specified options updated.
  PingOptions copyWith({
    String? reportId,
    List<ServiceType>? serviceTypes,
    String? bucket,
    Duration? timeout,
  }) {
    return PingOptions(
      reportId: reportId ?? this.reportId,
      serviceTypes: serviceTypes ?? this.serviceTypes,
      bucket: bucket ?? this.bucket,
      timeout: timeout ?? this.timeout,
    );
  }
}

/// A single endpoint in a [DiagnosticsResult].
///
/// {@category Diagnostics}
class DiagnosticsEndpoint {
  const DiagnosticsEndpoint({
    required this.type,
    required this.id,
    required this.local,
    required this.remote,
    required this.lastActivity,
    required this.state,
    this.bucket,
    this.details,
  });

  /// The type of service this entry represents.
  final ServiceType type;

  /// The unique identifier for this endpoint.
  final String id;

  /// The local address of this endpoint.
  final String local;

  /// The remote address of this endpoint.
  final String remote;

  /// The time since the last activity.
  final Duration? lastActivity;

  /// The current state of this endpoint.
  final EndpointState state;

  /// The name of the bucket this endpoint is connected to.
  final String? bucket;

  /// Various additional details about the endpoint.
  final Object? details;
}

extension MessageDiagEndpointDiagInfoExtension on message.DiagEndpointDiagInfo {
  DiagnosticsEndpoint toApi() {
    return DiagnosticsEndpoint(
      type: type.toApi(),
      id: id,
      local: local,
      remote: remote,
      lastActivity: lastActivity,
      state: state.toApi(),
      bucket: bucket,
      details: details != null ? jsonDecode(details!) : null,
    );
  }
}

/// The output of [Cluster.diagnostics].
///
/// {@category Diagnostics}
class DiagnosticsResult {
  const DiagnosticsResult({
    required this.version,
    required this.id,
    required this.sdk,
    required this.services,
  });

  /// The version number of this report.
  final int version;

  /// The unique identifier for this report.
  final String id;

  /// The name of the SDK which generated this report.
  final String sdk;

  /// A list of service endpoints and their diagnostics results.
  final Map<ServiceType, List<DiagnosticsEndpoint>> services;
}

extension MessageDiagDiagnosticsResultExtension
    on message.DiagDiagnosticsResult {
  DiagnosticsResult toApi() {
    return DiagnosticsResult(
      version: version,
      id: id,
      sdk: sdk,
      services: services.map((serviceType, endpoints) {
        return MapEntry(
          serviceType.toApi(),
          endpoints.map((endpoint) => endpoint.toApi()).toList(),
        );
      }),
    );
  }
}

/// The options available for [Cluster.diagnostics].
///
/// {@category Diagnostics}
class DiagnosticsOptions {
  const DiagnosticsOptions({
    this.reportId,
  });

  /// A unique identifier for the report generated by this operation.
  final String? reportId;
}
