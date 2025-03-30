import 'dart:convert';
import 'dart:typed_data';

/// Encapsulates the raw bytes of a document along with the flags which
/// indicate the format of the raw bytes.
///
/// {@category Key-Value}
class EncodedDocumentData {
  EncodedDocumentData({required this.flags, required this.bytes});

  /// The flags which indicate the format of the raw [bytes].
  final int flags;

  /// The raw bytes of the document.
  final Uint8List bytes;
}

/// A transcoder is responsible for encoding and decoding document values
/// to and from raw bytes.
///
/// Along with the raw bytes a document stores a set of flags which indicate the
/// format of the raw bytes. A transcoder uses these flags to determine how to
/// decode the raw bytes into a Dart value.
///
/// {@category Key-Value}
abstract class Transcoder {
  const Transcoder();

  /// Encodes the given [value] into [EncodedDocumentData].
  EncodedDocumentData encode(Object? value);

  /// Decodes the given [EncodedDocumentData] into a Dart value.
  Object? decode(EncodedDocumentData data);
}

/// [Transcoder] which implements cross-SDK transcoding capabilities by
/// taking advantage of the common flags specification.
///
/// This transcoder is capable of encoding/decoding any value which is encodable
/// to JSON, and additionally has special-case handling for [Uint8List]s.
///
/// {@category Key-Value}
class DefaultTranscoder implements Transcoder {
  const DefaultTranscoder();

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

  static int _resolveDartFormatFlags(int flags) {
    var dartFormat = flags & _dartFormatMask;
    final commonFormat = flags & _commonFormatMask;

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
    return dartFormat;
  }

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
        bytes: utf8.encode(value),
      );
    }

    return EncodedDocumentData(
      flags: _dartFormatJson | _commonFormatJson,
      bytes: _jsonUtf8Encoder.convert(value) as Uint8List,
    );
  }

  @override
  Object? decode(EncodedDocumentData data) {
    switch (_resolveDartFormatFlags(data.flags)) {
      case _dartFormatUtf8:
        return utf8.decode(data.bytes);
      case _dartFormatRaw:
        return data.bytes;
      case _dartFormatJson:
        try {
          return _jsonUtf8Decoder.decode(data.bytes);
        } on FormatException {
          // If we encounter a parse error, assume that we need
          // to return bytes instead of an object.
          return data.bytes;
        }
      default:
        // Default to returning the raw bytes if all else fails.
        return data.bytes;
    }
  }
}

bool isJsonFormat(int flags) =>
    DefaultTranscoder._resolveDartFormatFlags(flags) ==
    DefaultTranscoder._dartFormatJson;
