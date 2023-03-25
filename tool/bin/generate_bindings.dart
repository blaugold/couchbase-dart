import 'package:tool/src/bindings_generator.dart';
import 'package:tool/src/bindings_model.dart';

void main() {
  final bindingsModel = BindingsModel.fromFile('./bindings.json');
  final generator = BindingsGenerator(model: bindingsModel);
  generator.generate();
}
