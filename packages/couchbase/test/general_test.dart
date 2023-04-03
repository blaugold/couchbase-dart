import 'package:checks/checks.dart';
import 'package:couchbase/src/general.dart';
import 'package:test/test.dart';

import 'utils/subject.dart';

void main() {
  group('Cas', () {
    test('parse', () {
      check(Cas.parse('0x0000000000000000')).equals(InternalCas.fromValue(0));
      check(Cas.parse('0x00000000ffffffff'))
          .equals(InternalCas.fromValue(0x00000000ffffffff));
      check(Cas.parse('0xffffffff00000000'))
          .equals(InternalCas.fromValue(0xffffffff00000000));
      check(Cas.parse('0x0000ffffffff0000'))
          .equals(InternalCas.fromValue(0x0000ffffffff0000));
      check(Cas.parse('0xffffffffffffffff'))
          .equals(InternalCas.fromValue(0xffffffffffffffff));
    });

    test('parse throws when value is invalid', () {
      check(() => Cas.parse('0x000000000000000')).throws<FormatException>();
      check(() => Cas.parse('000000000000000000')).throws<FormatException>();
      check(() => Cas.parse('0x000000000000000x')).throws<FormatException>();
    });

    test('toString', () {
      check(InternalCas.fromValue(0)).asString().equals('0x0000000000000000');
      check(InternalCas.fromValue(0x00000000ffffffff))
          .asString()
          .equals('0x00000000ffffffff');
      check(InternalCas.fromValue(0xffffffff00000000))
          .asString()
          .equals('0xffffffff00000000');
      check(InternalCas.fromValue(0x0000ffffffff0000))
          .asString()
          .equals('0x0000ffffffff0000');
      check(InternalCas.fromValue(0xffffffffffffffff))
          .asString()
          .equals('0xffffffffffffffff');
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
