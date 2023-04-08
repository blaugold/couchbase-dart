import 'package:checks/checks.dart';
import 'package:couchbase/couchbase.dart';
import 'package:test/test.dart';

import 'utils/subject.dart';
import 'utils/test_cluster.dart';
import 'utils/test_document.dart';

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
    // Wait for the mutation to be processed.
    await Future<void>.delayed(const Duration(milliseconds: 100));
    final result = await scope.query(
      r'SELECT * FROM _default WHERE META().id = $1',
      QueryOptions(parameters: [documentId]),
    );
    check(result).rows.single.deepEquals({'_default': true});
  });
}
