class ConnectionSpec {
  ConnectionSpec({
    this.scheme = _defaultScheme,
    required this.hosts,
    this.bucket,
    this.options = const {},
  });

  factory ConnectionSpec.parse(String input) =>
      _ConnectionSpecParser(input).parse();

  static const _defaultScheme = 'couchbase';

  final String scheme;
  final List<Host> hosts;
  final String? bucket;
  final Map<String, String> options;

  ConnectionSpec addOption(String key, String value) {
    return ConnectionSpec(
      scheme: scheme,
      hosts: hosts,
      bucket: bucket,
      options: {...options, key: value},
    );
  }

  @override
  String toString() {
    final buffer = StringBuffer();
    buffer.write(scheme);
    buffer.write('://');
    for (var i = 0; i < hosts.length; i++) {
      if (i > 0) {
        buffer.write(',');
      }
      buffer.write(hosts[i].name);
      if (hosts[i].port != null) {
        buffer.write(':');
        buffer.write(hosts[i].port);
      }
    }
    if (bucket != null) {
      buffer.write('/');
      buffer.write(bucket);
    }
    if (options.isNotEmpty) {
      buffer.write('?');
      for (var i = 0; i < options.length; i++) {
        if (i > 0) {
          buffer.write('&');
        }
        buffer.write(options.keys.elementAt(i));
        buffer.write('=');
        buffer.write(options.values.elementAt(i));
      }
    }
    return buffer.toString();
  }
}

class Host {
  Host(this.name, [this.port]);

  final String name;
  final int? port;
}

// TODO: Parsing could be more helpful by throwing a more specific
// exception with an offset into the input string.
class _ConnectionSpecParser {
  _ConnectionSpecParser(this._input);

  final String _input;
  var _pos = 0;
  String _scheme = ConnectionSpec._defaultScheme;
  final List<Host> _hosts = [];
  String? _bucket;
  final Map<String, String> _options = {};

  ConnectionSpec parse() {
    _parseScheme();
    _parseHosts();
    _parseBucket();
    _parseOptions();
    return ConnectionSpec(
      scheme: _scheme,
      hosts: _hosts,
      bucket: _bucket,
      options: _options,
    );
  }

  void _parseScheme() {
    final schemeEnd = _input.indexOf('://');
    if (schemeEnd == -1) {
      return;
    }
    _scheme = _input.substring(0, schemeEnd);
    _pos = schemeEnd + 3;
  }

  void _parseHosts() {
    final hostEnd = _input.indexOf('/', _pos);
    final hostString = hostEnd == -1
        ? _input.substring(_pos)
        : _input.substring(_pos, hostEnd);
    _pos += hostString.length;
    for (final host in hostString.split(',')) {
      final hostParts = host.split(':');
      if (hostParts.length > 2) {
        throw FormatException('Invalid host: $host');
      }
      _hosts.add(
        Host(
          hostParts[0],
          hostParts.length == 2 ? int.parse(hostParts[1]) : null,
        ),
      );
    }
  }

  void _parseBucket() {
    if (_pos >= _input.length) {
      return;
    }
    if (_input[_pos] != '/') {
      return;
    }
    _pos++;
    final bucketEnd = _input.indexOf('?', _pos);
    _bucket = bucketEnd == -1
        ? _input.substring(_pos)
        : _input.substring(_pos, bucketEnd);
    _pos += _bucket!.length;
  }

  void _parseOptions() {
    if (_pos >= _input.length) {
      return;
    }
    if (_input[_pos] != '?') {
      throw FormatException('Invalid options: ${_input.substring(_pos)}');
    }
    _pos++;
    final optionsEnd = _input.length;
    final optionsString = _input.substring(_pos, optionsEnd);
    _pos += optionsString.length;
    for (final option in optionsString.split('&')) {
      final optionParts = option.split('=');
      if (optionParts.length != 2) {
        throw FormatException('Invalid option: $option');
      }
      _options[optionParts[0]] = optionParts[1];
    }
  }
}
