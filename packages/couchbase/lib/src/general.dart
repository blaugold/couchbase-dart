import 'package:meta/meta.dart';

import 'message.g.dart';
import 'message.g.dart' as message;
import 'transcoder.dart';

/// The various service types available.
enum ServiceType {
  /// The key-value service, responsible for data storage.
  keyValue,

  /// The management service, responsible for managing the cluster.
  management,

  /// The views service, responsible for views querying.
  views,

  /// The query service, responsible for N1QL querying.
  query,

  /// The search service, responsible for full-text search querying.
  search,

  /// The analytics service, responsible for analytics querying.
  analytics,

  /// The eventing service, responsible for event-driven actions.
  eventing,
}

extension MessageServiceTypeExtension on message.ServiceType {
  ServiceType toApi() {
    switch (this) {
      case message.ServiceType.keyValue:
        return ServiceType.keyValue;
      case message.ServiceType.management:
        return ServiceType.management;
      case message.ServiceType.view:
        return ServiceType.views;
      case message.ServiceType.query:
        return ServiceType.query;
      case message.ServiceType.search:
        return ServiceType.search;
      case message.ServiceType.analytics:
        return ServiceType.analytics;
      case message.ServiceType.eventing:
        return ServiceType.eventing;
    }
  }
}

extension ServiceTypeExtension on ServiceType {
  message.ServiceType toMessage() {
    switch (this) {
      case ServiceType.keyValue:
        return message.ServiceType.keyValue;
      case ServiceType.management:
        return message.ServiceType.management;
      case ServiceType.views:
        return message.ServiceType.view;
      case ServiceType.query:
        return message.ServiceType.query;
      case ServiceType.search:
        return message.ServiceType.search;
      case ServiceType.analytics:
        return message.ServiceType.analytics;
      case ServiceType.eventing:
        return message.ServiceType.eventing;
    }
  }
}

/// An opaque value which can be used to compare document states to determine if
/// a change has occurred.
///
/// {@category Key-Value}
@immutable
class Cas {
  const Cas._(this._value);

  /// Parses the string representation of a [Cas] as returned by [toString].
  factory Cas.parse(String value) {
    Never throwFormatException() =>
        throw FormatException('Invalid CAS string value', value);

    if (value.length != 18 || !value.startsWith('0x')) {
      throwFormatException();
    }

    try {
      final hexDigits = value.substring(2);
      final higher = int.parse(hexDigits.substring(0, 8), radix: 16);
      final lower = int.parse(hexDigits.substring(8), radix: 16);
      return Cas._(higher << 32 | lower);
    } on FormatException {
      throwFormatException();
    }
  }

  final int _value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Cas &&
          runtimeType == other.runtimeType &&
          _value == other._value;

  @override
  int get hashCode => _value.hashCode;

  /// Returns a string representation of this [Cas].
  ///
  /// This representation can be parsed by [Cas.parse].
  @override
  String toString() {
    // Return a hex string representation of the CAS.
    final higher = _value >>> 32;
    final lower = _value & 0xFFFFFFFF;
    final hexDigits = '${higher.toRadixString(16).padLeft(8, '0')}'
        '${lower.toRadixString(16).padLeft(8, '0')}';
    return '0x$hexDigits';
  }
}

extension InternalCas on Cas {
  static Cas fromValue(int value) => Cas._(value);

  static const zero = Cas._(0);

  int get value => _value;
}

/// Base class for options which are common to many operations.
///
/// {@category Core}
abstract class CommonOptions {
  const CommonOptions({this.timeout});

  /// The timeout for this operation.
  final Duration? timeout;
}

/// Extends [CommonOptions] with durability options.
///
/// {@category Key-Value}
abstract class CommonDurabilityOptions extends CommonOptions {
  /// Creates a new [CommonDurabilityOptions] with a [DurabilityLevel].
  const CommonDurabilityOptions({
    super.timeout,
    this.durabilityLevel = DurabilityLevel.none,
  })  : durabilityPersistTo = PersistTo.none,
        durabilityReplicateTo = ReplicateTo.none;

  /// Creates a new [CommonDurabilityOptions] with the legacy durability
  /// options.
  const CommonDurabilityOptions.legacyDurability({
    super.timeout,
    PersistTo persistTo = PersistTo.none,
    ReplicateTo replicateTo = ReplicateTo.none,
  })  : durabilityLevel = DurabilityLevel.none,
        durabilityPersistTo = persistTo,
        durabilityReplicateTo = replicateTo;

  /// The level of synchronous durability for this operation.
  final DurabilityLevel durabilityLevel;

  /// The number of nodes this operation should be persisted to before it is
  /// considered successful.
  final PersistTo durabilityPersistTo;

  /// The number of nodes this operation should be replicated to before it is
  /// considered successful.
  final ReplicateTo durabilityReplicateTo;
}

extension InternalCommonDurabilityOptions on CommonDurabilityOptions {
  bool get usesLegacyDurability =>
      durabilityPersistTo != PersistTo.none ||
      durabilityReplicateTo != ReplicateTo.none;
}

/// Interface class for options which can be used to specify a transcoder.
///
/// {@category Key-Value}
abstract class TranscoderOptions {
  /// An explicit [Transcoder] to use for this specific operation.
  Transcoder? get transcoder;
}
