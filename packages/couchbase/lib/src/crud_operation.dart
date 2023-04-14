import 'collection.dart';
import 'general.dart';
import 'mutation_state.dart';

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

/// Contains the results of a Mutation operation.
///
/// {@category Key-Value}
class MutationResult {
  const MutationResult({
    required this.cas,
    required this.token,
  });

  /// The updated [Cas] for the document.
  final Cas cas;

  /// The token representing the mutation performed.
  final MutationToken? token;
}

/// The result of a specific sub-operation within a Lookup-In operation.
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

  /// The list of result entries for each sub-operation performed.
  final List<LookupInResultEntry> content;

  /// The cas of the document.
  final Cas cas;
}

/// The result of a specific sub-operation within a Mutate-In operation.
///
/// {@category Key-Value}
class MutateInResultEntry {
  const MutateInResultEntry({
    this.value,
  });

  /// The resulting value after the completion of the sub-operation.
  ///
  /// This is only returned in the case of a counter operation
  /// (increment/decrement) and is not  included for general operations.
  final Object? value;
}

/// Contains the results of a Mutate-In operation.
///
/// {@category Key-Value}
class MutateInResult {
  const MutateInResult({
    required this.content,
    required this.cas,
    this.token,
  });

  /// The list of result entries for each sub-operation performed.
  final List<MutateInResultEntry> content;

  /// The updated [Cas] for the document.
  final Cas cas;

  /// The token representing the mutation performed.
  final MutationToken? token;
}
