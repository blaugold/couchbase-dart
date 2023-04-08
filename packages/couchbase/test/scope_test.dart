import 'package:checks/checks.dart';
import 'package:couchbase/couchbase.dart';
import 'package:test/test.dart';

import 'utils/cluster.dart';
import 'utils/document.dart';
import 'utils/subject.dart';
import 'utils/utils.dart';

void main() {
  late Cluster cluster;
  late Scope scope;

  setUpAll(() async {
    cluster = await connectToTestCluster();
    scope = cluster.testBucket.defaultScope;
  });

  test('query', () async {
    final documentId = createTestDocumentId();
    await scope.defaultCollection.insert(documentId, true);

    await withRetry(() async {
      final result = await scope.query(
        r'SELECT * FROM _default WHERE META().id = $1',
        QueryOptions(parameters: [documentId]),
      );
      check(result).rows.single.deepEquals({'_default': true});
    });
  });
}
