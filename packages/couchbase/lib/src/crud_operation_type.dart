import 'collection.dart';
import 'message_basic.dart';

/// Contains the results of a Get operation.
///
/// {@category Key-Value}
class GetResult {
  const GetResult({
    required this.content,
    required this.cas,
    this.expiryTime,
  });

  /// The content of the document.
  final Object? content;

  /// The [Cas] of the document.
  final Cas cas;

  /// The expiry time of the document, if it was requested.
  ///
  /// See [GetOptions.withExpiry].
  final DateTime? expiryTime;
}

/// The results of an Exists operation.
///
/// {@category Key-Value}
class ExistsResult {
  const ExistsResult({
    required this.exists,
    required this.cas,
  });

  /// Whether the document existed or not.
  final bool exists;

  /// The [Cas] of the document.
  final Cas? cas;
}

/// The results of a specific sub-operation within a Lookup-In operation.
///
/// {@category Key-Value}
class LookupInResultEntry {
  const LookupInResultEntry({
    this.error,
    this.value,
  });

  /// The error, if any, which occurred when attempting to perform this
  /// sub-operation.
  final Object? error;

  /// The value returned by the sub-operation.
  final Object? value;
}

/// Contains the results of a Lookup-In operation.
///
/// {@category Key-Value}
class LookupInResult {
  const LookupInResult({
    required this.content,
    required this.cas,
  });

  /// A list of result entries for each sub-operation performed.
  final List<LookupInResultEntry> content;

  /// The cas of the document.
  final Cas cas;
}

class MutationResult {
  const MutationResult({
    required this.cas,
    required this.token,
  });

  final Cas cas;
  final MutationToken? token;
}
