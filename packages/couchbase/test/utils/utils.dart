Future<void> wait({int? milliseconds, int? seconds}) {
  return Future<void>.delayed(
    Duration(
      milliseconds: milliseconds ?? 0,
      seconds: seconds ?? 0,
    ),
  );
}
