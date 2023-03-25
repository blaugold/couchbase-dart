import 'message_buffer.dart';
import 'message_errors.dart';

extension OptionalCommonErrorExtension on MessageBuffer {
  void readOptionalCommonError() {
    if (!readBool()) {
      return;
    }

    throw CommonError.read(this);
  }
}
