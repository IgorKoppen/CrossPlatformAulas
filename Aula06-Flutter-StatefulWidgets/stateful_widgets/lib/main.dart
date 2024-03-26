import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int countador = 0;
  bool limite = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.purple,
            brightness: Brightness.dark,
          )),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateful Exemplo'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (countador == 10) {
                limite = true;
              } else {
                countador++;
              }
            });
          },
          child: const Icon(Icons.add),
        ),
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Clicou $countador vezes no botão'),
            if (limite)
              const Text(
                "Limite de clique atigindo",
                style: TextStyle(color: Colors.red),
              ),
          ],
        )),
      ),
    );
  }
}
