/// Represents the mutation token returned by the server.
///
/// See [MutationState].
///
/// {@category Query}
class MutationToken {
  const MutationToken._({
    required int partitionUuid,
    required int sequenceNumber,
    required int partitionId,
    required String bucketName,
  })  : _bucketName = bucketName,
        _partitionId = partitionId,
        _sequenceNumber = sequenceNumber,
        _partitionUuid = partitionUuid;

  final int _partitionUuid;
  final int _sequenceNumber;
  final int _partitionId;
  final String _bucketName;
}

extension InternalMutationToken on MutationToken {
  static MutationToken create({
    required int partitionUuid,
    required int sequenceNumber,
    required int partitionId,
    required String bucketName,
  }) {
    return MutationToken._(
      partitionUuid: partitionUuid,
      sequenceNumber: sequenceNumber,
      partitionId: partitionId,
      bucketName: bucketName,
    );
  }

  int get partitionUuid => _partitionUuid;
  int get sequenceNumber => _sequenceNumber;
  int get partitionId => _partitionId;
  String get bucketName => _bucketName;
}

/// Aggregates a number of [MutationToken]'s which have been returned by
/// mutation operations, which can then be used when performing queries.
///
/// This will guarantee that the query includes the specified set of mutations
/// without incurring the wait associated with request_plus level consistency.
///
/// {@category Query}
class MutationState {
  final _data = <String, Map<int, MutationToken>>{};

  List<MutationToken> get _tokens {
    final result = <MutationToken>[];
    for (final bucket in _data.values) {
      result.addAll(bucket.values);
    }
    return result;
  }

  /// Adds a [MutationToken] to this state.
  void add(MutationToken token) {
    final vbId = token._partitionId;
    final vbSeqNo = token._sequenceNumber;
    final bucketName = token._bucketName;

    final tokens = _data.putIfAbsent(bucketName, () => {});
    if (!tokens.containsKey(vbId)) {
      tokens[vbId] = token;
    } else {
      final otherToken = tokens[vbId]!;
      final otherTokenSeqNo = otherToken._sequenceNumber;
      if (otherTokenSeqNo < vbSeqNo) {
        tokens[vbId] = token;
      }
    }
  }

  /// Adds multiple [MutationToken]s to this state.
  void addAll(Iterable<MutationToken> tokens) => tokens.forEach(add);
}

extension InternalMutationState on MutationState {
  List<MutationToken> get tokens => _tokens;
}
