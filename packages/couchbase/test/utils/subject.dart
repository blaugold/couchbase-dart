import 'package:checks/checks.dart';
import 'package:checks/context.dart';
import 'package:couchbase/couchbase.dart';

extension IsASubject<T> on Subject<T> {
  Subject<Map<String, Object?>> get isJsonMap => isA();
  Subject<bool> get isBool => isA();

  Subject<KeyValueErrorContext> get isKeyValueErrorContext =>
      isA<KeyValueErrorContext>();
}

extension AsStringSubject<T> on Subject<T> {
  Subject<String> asString() {
    return context.nest(
      () => ['has a string representation'],
      (actual) {
        try {
          return Extracted.value(actual.toString());
          // ignore: avoid_catches_without_on_clauses
        } catch (error, stackTrace) {
          return Extracted.rejection(
            actual: ['a $T'],
            which: [
              ...prefixFirst(
                'threw while trying to call toString(): ',
                literal(error),
              ),
              ...stackTrace.toString().split('\n')
            ],
          );
        }
      },
    );
  }
}

extension KeyValueErrorContextSubject on Subject<KeyValueErrorContext> {
  Subject<Cas> get cas => has((it) => it.cas, 'cas');
  Subject<String> get key => has((it) => it.key, 'key');
  Subject<KeyValueStatusCode?> get statusCode =>
      has((it) => it.statusCode, 'statusCode');
}

extension GetResultSubject on Subject<GetResult> {
  Subject<Cas> get cas => has((it) => it.cas, 'cas');
  Subject<Object?> get content => has((it) => it.content, 'content');
  Subject<DateTime?> get expiryTime => has((it) => it.expiryTime, 'expiryTime');
}

extension ExistsResultSubject on Subject<ExistsResult> {
  Subject<Cas?> get cas => has((it) => it.cas, 'cas');
  Subject<bool> get exists => has((it) => it.exists, 'exists');
}

extension MutationResultSubject on Subject<MutationResult> {
  Subject<Cas> get cas => has((it) => it.cas, 'cas');
}

extension LookupInResultSubject on Subject<LookupInResult> {
  Subject<List<LookupInResultEntry>> get content =>
      has((it) => it.content, 'content');
}

ConditionSubject<LookupInResultEntry> lookupInResultEntry() =>
    it<LookupInResultEntry>();

extension LookupInResultEntrySubject on Subject<LookupInResultEntry> {
  Subject<Object?> get value => has((it) => it.value, 'value');
  Subject<Object?> get error => has((it) => it.error, 'error');
}

extension QueryResultSubject on Subject<QueryResult> {
  Subject<List<Map<String, Object?>>> get rows => has((it) => it.rows, 'rows');
  Subject<QueryMetaData> get meta => has((it) => it.meta, 'meta');
}

extension QueryMetaDataSubject on Subject<QueryMetaData> {
  Subject<String> get clientContextId =>
      has((it) => it.clientContextId, 'clientContextId');
  Subject<QueryStatus> get status => has((it) => it.status, 'status');
  Subject<Map<String, Object?>?> get signature =>
      has((it) => it.signature, 'signature');
  Subject<List<QueryWarning>> get warnings =>
      has((it) => it.warnings, 'warnings');
  Subject<QueryMetrics?> get metrics => has((it) => it.metrics, 'metrics');
  Subject<Map<String, Object?>?> get profile =>
      has((it) => it.profile, 'profile');
}
