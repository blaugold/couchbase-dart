import 'dart:math';

final _random = Random();

String createTestDocumentId() =>
    'test-${DateTime.now().microsecondsSinceEpoch}-${_random.nextInt(1 << 32)}';
