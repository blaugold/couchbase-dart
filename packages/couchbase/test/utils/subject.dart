import 'package:checks/checks.dart';
import 'package:checks/context.dart';

extension IsASubject<T> on Subject<T> {
  Subject<Map<String, Object?>> get isJsonMap => isA();
  Subject<bool> get isBool => isA();
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
