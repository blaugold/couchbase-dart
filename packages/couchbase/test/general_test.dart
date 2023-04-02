import 'package:couchbase/src/general.dart';
import 'package:test/test.dart';

void main() {
  group('Cas', () {
    test('parse', () {
      expect(Cas.parse('0x0000000000000000'), InternalCas.fromValue(0));
      expect(
        Cas.parse('0x00000000ffffffff'),
        InternalCas.fromValue(0x00000000ffffffff),
      );
      expect(
        Cas.parse('0xffffffff00000000'),
        InternalCas.fromValue(0xffffffff00000000),
      );
      expect(
        Cas.parse('0x0000ffffffff0000'),
        InternalCas.fromValue(0x0000ffffffff0000),
      );
      expect(
        Cas.parse('0xffffffffffffffff'),
        InternalCas.fromValue(0xffffffffffffffff),
      );
    });

    test('parse throws when value is invalid', () {
      expect(
        () => Cas.parse('0x000000000000000'),
        throwsFormatException,
      );
      expect(
        () => Cas.parse('000000000000000000'),
        throwsFormatException,
      );
      expect(
        () => Cas.parse('0x000000000000000x'),
        throwsFormatException,
      );
    });

    test('toString', () {
      expect(InternalCas.fromValue(0).toString(), '0x0000000000000000');
      expect(
        InternalCas.fromValue(0x00000000ffffffff).toString(),
        '0x00000000ffffffff',
      );
      expect(
        InternalCas.fromValue(0xffffffff00000000).toString(),
        '0xffffffff00000000',
      );
      expect(
        InternalCas.fromValue(0x0000ffffffff0000).toString(),
        '0x0000ffffffff0000',
      );
      expect(
        InternalCas.fromValue(0xffffffffffffffff).toString(),
        '0xffffffffffffffff',
      );
    });

    test('equality', () {
      expect(InternalCas.fromValue(0), InternalCas.fromValue(0));
      expect(
        InternalCas.fromValue(0).hashCode,
        InternalCas.fromValue(0).hashCode,
      );
      expect(InternalCas.fromValue(0), isNot(InternalCas.fromValue(1)));
      expect(
        InternalCas.fromValue(0).hashCode,
        isNot(InternalCas.fromValue(1).hashCode),
      );
    });
  });
}
