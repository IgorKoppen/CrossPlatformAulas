import 'package:navigation/todo.dart';

final todos = List.generate(20,
 (index) => Todo(
  'Todo ${index + 1}',
  "Descrição ${index + 1}"
 ));