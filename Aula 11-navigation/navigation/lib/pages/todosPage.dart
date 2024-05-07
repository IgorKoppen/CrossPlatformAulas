import 'package:flutter/material.dart';
import 'package:navigation/pages/todosInfoPage.dart';
import 'package:navigation/todo.dart';

class TodosScreen extends StatelessWidget {
  final List<Todo> todos;
  const TodosScreen({super.key, required this.todos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todos"),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => DetailScreen(todo: todos[index])
              ));
            },
          );
        },
      ),
    );
  }
}
