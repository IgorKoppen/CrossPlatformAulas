import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text(
          'Bem-vindo!',
          textDirection: TextDirection.ltr,
        ),
      ),
      body: Center(
        child: Text(
          'hello world!',
          textDirection: TextDirection.ltr,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 24.0,
        ),
        onPressed: () {},
      ),
    );
  }
}
