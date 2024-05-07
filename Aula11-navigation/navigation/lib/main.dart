import 'package:flutter/material.dart';
import 'package:navigation/pages/todosPage.dart';
import 'package:navigation/todos.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
 
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Navigation",
      home: TodosScreen(todos: todos)
      ,);
  }
}
