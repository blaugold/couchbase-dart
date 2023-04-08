Future<T> withRetry<T>(
  Future<T> Function() action, {
  int? maxAttempts = 10,
  Duration? delay = const Duration(milliseconds: 100),
  bool Function(Exception error)? retryOn,
}) async {
  var attempts = 0;
  while (true) {
    if (attempts > 0) {
      // ignore: avoid_print
      print('Retrying... (attempt $attempts)');
    }
    try {
      return await action();
    } on Exception catch (e) {
      if (retryOn != null && !retryOn(e)) {
        rethrow;
      }
      if (maxAttempts != null && ++attempts >= maxAttempts) {
        rethrow;
      }
      // ignore: avoid_print
      print('Retryable action failed with ${e.runtimeType}.');
      if (delay != null) {
        await Future<void>.delayed(delay);
      }
    }
  }
}
