typedef SubDocumentPath = List<SubDocumentPathSegment>;

abstract class SubDocumentPathSegment {}

class SubDocumentKey extends SubDocumentPathSegment {
  SubDocumentKey(this.path);

  final String path;
}

class SubDocumentIndex extends SubDocumentPathSegment {
  SubDocumentIndex(this.index);

  final int index;
}

// ignore: avoid_classes_with_only_static_members
abstract class SubDocumentUtils {
  static const notFoundSentinel = Object();

  static Object? getByPath(Object? root, String path) =>
      _getByPath(root, _parsePath(path));

  static Object? insertByPath(Object? root, String path, Object? value) =>
      _insertByPath(root, _parsePath(path), value);

  static SubDocumentPath _parsePath(String path) {
    if (path.isEmpty) {
      return [];
    }

    var identifier = '';
    final segments = <SubDocumentPathSegment>[];

    for (var i = 0; i < path.length; ++i) {
      if (path[i] == '[') {
        // Starting an array, use the previous bit as a property
        if (identifier.isNotEmpty) {
          segments.add(SubDocumentKey(identifier));
          identifier = '';
        }
      } else if (path[i] == ']') {
        // array path of identifier;
        segments.add(SubDocumentIndex(int.parse(identifier)));
        identifier = '';
        // skip the `.` that follows, if there is one
        ++i;
      } else if (path[i] == '.') {
        segments.add(SubDocumentKey(identifier));
        identifier = '';
      } else {
        identifier += path[i];
      }
    }

    if (identifier.isNotEmpty) {
      segments.add(SubDocumentKey(identifier));
    }

    return segments;
  }

  static Object? _insertByPath(
    Object? root,
    SubDocumentPath path,
    Object? value,
  ) {
    if (path.isEmpty) {
      return value;
    }

    final firstSegment = path.removeAt(0);
    if (firstSegment is SubDocumentKey) {
      root ??= <String, Object?>{};
      if (root is! Map) {
        throw ArgumentError.value(
          root,
          'root',
          'expected object but found array',
        );
      }

      root[firstSegment.path] = _insertByPath(
        root[firstSegment.path],
        path,
        value,
      );
    } else if (firstSegment is SubDocumentIndex) {
      root ??= <Object?>[];
      if (root is! List) {
        throw ArgumentError.value(
          root,
          'root',
          'expected array but found object',
        );
      }

      if (root.length <= firstSegment.index) {
        root.length = firstSegment.index + 1;
      }

      root[firstSegment.index] = _insertByPath(
        root[firstSegment.index],
        path,
        value,
      );
    } else {
      throw UnimplementedError(
        'Encountered unexpected path segment: $firstSegment',
      );
    }

    return root;
  }

  static Object? _getByPath(Object? root, SubDocumentPath path) {
    if (path.isEmpty) {
      return root;
    }

    final firstSegment = path.removeAt(0);
    if (firstSegment is SubDocumentKey) {
      if (root == null) {
        return null;
      }
      if (root is! Map) {
        throw ArgumentError.value(
          root,
          'root',
          'expected object but found array',
        );
      }

      if (!root.containsKey(firstSegment.path)) {
        return notFoundSentinel;
      }

      return _getByPath(root[firstSegment.path], path);
    } else if (firstSegment is SubDocumentIndex) {
      if (root == null) {
        return null;
      }
      if (root is! List) {
        throw ArgumentError.value(
          root,
          'root',
          'expected array but found object',
        );
      }

      if (root.length <= firstSegment.index) {
        return notFoundSentinel;
      }

      return _getByPath(root[firstSegment.index], path);
    } else {
      throw UnimplementedError(
        'Encountered unexpected path segment: $firstSegment',
      );
    }
  }
}
