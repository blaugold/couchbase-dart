import 'package:couchbase/src/message.dart';

import 'message_buffer.dart';

extension OptionalCommonErrorExtension on MessageBuffer {
  void readOptionalCommonError() {
    if (!readBool()) {
      return;
    }

    throw CommonError.read(this);
  }
}
