import 'package:checks/checks.dart';
import 'package:couchbase/couchbase.dart';
import 'package:test/test.dart';

import 'utils/subject.dart';

void main() async {
  test('connect to Capella cluster', () async {
    final cluster = await Cluster.connect(
      'couchbases://cb.a2askaxtjyf8eii.cloud.couchbase.com',
      ClusterOptions(
        username: 'ReadTravelSample',
        password: 'wgf_MFH9btr@tbv4hez',
      ),
    );
    addTearDown(cluster.close);

    final bucket = cluster.bucket('travel-sample');
    final samples = bucket.scope('inventory');

    final queryResults = await samples.query('SELECT * FROM airline');

    check(queryResults.rows).length.equals(187);
    check(queryResults.rows).any((it) {
      it
        ..['airline'].isJsonObject['callsign'].equals('HORIZON AIR')
        ..['airline'].isJsonObject['country'].equals('United States')
        ..['airline'].isJsonObject['iata'].equals('QX')
        ..['airline'].isJsonObject['icao'].equals('QXE')
        ..['airline'].isJsonObject['id'].equals(2778)
        ..['airline'].isJsonObject['name'].equals('Horizon Air')
        ..['airline'].isJsonObject['type'].equals('airline');
    });
  });
}
