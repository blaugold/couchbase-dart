import 'package:couchbase/couchbase.dart';
import 'package:test/test.dart';

void main() async {
  test('insert and get document', () async {
    final cluster = await connect(
      'couchbase://localhost',
      ConnectOptions(
        username: 'admin',
        password: 'password',
      ),
    );

    final bucket = cluster.bucket('test');
    final collection = bucket.defaultCollection;
    final testDocumentId = 'test-${DateTime.now().microsecondsSinceEpoch}';
    final testDocumentValue = {'hello': 'world'};
    await collection.insert(testDocumentId, testDocumentValue);
    final getResult = await collection.get(testDocumentId);
    expect(getResult.content, testDocumentValue);

    await cluster.close();
  });
}
