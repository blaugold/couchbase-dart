[![Version](https://badgen.net/pub/v/couchbase)](https://pub.dev/packages/couchbase)
[![CI](https://github.com/blaugold/couchbase-dart/actions/workflows/ci.yaml/badge.svg)](https://github.com/blaugold/couchbase-dart/actions/workflows/ci.yaml)

This is a SDK to access a Couchbase Server cluster from Dart.

> ⚠️ This project is still at an early stage and a work in progress. If you find
> bugs or have suggestions for improvements please open an [issue][issues].

[Couchbase Server][couchbase] is a document-oriented NoSQL database that is
distributed, scalable, and highly available. It is a key-value store with
additional support for documents, views, and queries.

## Installation

Add a dependency on `couchbase` to your `pubspec.yaml` file:

```shell
dart pub add couchbase
```

The SDK uses a native library that is platform specific and is automatically
downloaded when you use the SDK. The native library can be downloaded manually
by running the following command:

```shell
dart run couchbase:install
```

This is useful when a Dart application is packaged as a Docker image and you
want to avoid the latency of downloading the native library each time a
container is created. In this case the native library should be included in the
image.

## Getting started

Use `Cluster.connect` to connect to a Couchbase Server cluster:

```dart
import 'package:couchbase/couchbase.dart';

void main() async {
  final cluster = await Cluster.connect(
    'couchbase://localhost',
    ClusterOptions(
      username: 'admin',
      password: 'password',
    ),
  );

  final bucket = cluster.bucket('my-bucket');
  final collection = bucket.defaultCollection;

  await collection.insert('greeting-alice', {'message': 'Hello @name!', 'name': 'Alice'});

  final getResult = await collection.get('greeting-alice');
  print(getResult.content);

  await cluster.close();
}
```

[couchbase]: https://docs.couchbase.com/home/server.html
[issues]: https://github.com/blaugold/couchbase-dart/issues
