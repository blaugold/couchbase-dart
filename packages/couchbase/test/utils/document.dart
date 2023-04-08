import 'dart:math';
import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:couchbase/couchbase.dart';

final _random = Random();

String createTestDocumentId() =>
    'test-${DateTime.now().microsecondsSinceEpoch}-${_random.nextInt(1 << 32)}';

extension EncodedDocumentDataSubject on Subject<EncodedDocumentData> {
  Subject<int> get flags => has((it) => it.flags, 'flags');
  Subject<Uint8List> get bytes => has((it) => it.bytes, 'bytes');
}

class TestTranscoder extends Transcoder {
  const TestTranscoder();

  static const value = Object();

  @override
  Object? decode(EncodedDocumentData data) {
    check(data)
      ..flags.equals(41)
      ..bytes.deepEquals([42]);
    return value;
  }

  @override
  EncodedDocumentData encode(Object? value) {
    check(value).equals(TestTranscoder.value);
    return EncodedDocumentData(
      flags: 41,
      bytes: Uint8List.fromList([42]),
    );
  }
}
