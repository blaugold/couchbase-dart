import 'dart:convert';
import 'dart:typed_data';

class EncodedDocumentData {
  EncodedDocumentData({required this.flags, required this.bytes});

  final int flags;
  final Uint8List bytes;
}

abstract class Transcoder {
  EncodedDocumentData encode(Object? value);
  Object? decode(EncodedDocumentData data);
}

class DefaultTranscoder implements Transcoder {
  static const _dartFormatJson = 0x00;
  static const _dartFormatRaw = 0x02;
  static const _dartFormatUtf8 = 0x04;
  static const _dartFormatMask = 0xff;
  static const _dartFormatUnknown = 0x100;

  static const _commonFormatNone = 0x00 << 24;
  static const _commonFormatPrivate = 0x01 << 24;
  static const _commonFormatJson = 0x02 << 24;
  static const _commonFormatRaw = 0x03 << 24;
  static const _commonFormatUtf8 = 0x04 << 24;
  static const _commonFormatMask = 0xff << 24;

  static final _jsonUtf8Encoder = JsonUtf8Encoder();
  static final _jsonUtf8Decoder = json.fuse(utf8);

  @override
  EncodedDocumentData encode(Object? value) {
    if (value is Uint8List) {
      return EncodedDocumentData(
        flags: _dartFormatRaw | _commonFormatRaw,
        bytes: value,
      );
    }

    if (value is String) {
      return EncodedDocumentData(
        flags: _dartFormatUtf8 | _commonFormatUtf8,
        bytes: utf8.encode(value) as Uint8List,
      );
    }

    return EncodedDocumentData(
      flags: _dartFormatJson | _commonFormatJson,
      bytes: _jsonUtf8Encoder.convert(value) as Uint8List,
    );
  }

  @override
  Object? decode(EncodedDocumentData data) {
    var dartFormat = data.flags & _dartFormatMask;
    final commonFormat = data.flags & _commonFormatMask;

    if (commonFormat != _commonFormatNone) {
      if (commonFormat == _commonFormatJson) {
        dartFormat = _dartFormatJson;
      } else if (commonFormat == _commonFormatRaw) {
        dartFormat = _dartFormatRaw;
      } else if (commonFormat == _commonFormatUtf8) {
        dartFormat = _dartFormatUtf8;
      } else if (commonFormat != _commonFormatPrivate) {
        // Unknown CF Format! The following will force
        // fallback to returning raw bytes.
        dartFormat = _dartFormatUnknown;
      }
    }

    if (dartFormat == _dartFormatUtf8) {
      return utf8.decode(data.bytes);
    } else if (dartFormat == _dartFormatRaw) {
      return data.bytes;
    } else if (dartFormat == _dartFormatJson) {
      try {
        return _jsonUtf8Decoder.decode(data.bytes);
      } on FormatException {
        // If we encounter a parse error, assume that we need
        // to return bytes instead of an object.
        return data.bytes;
      }
    }

    // Default to returning the raw bytes if all else fails.
    return data.bytes;
  }
}
