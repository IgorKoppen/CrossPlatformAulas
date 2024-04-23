import 'package:flutter/material.dart';
import 'package:listview/contato.dart';

import 'contatolistcontato.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contatacts',
      home: ListPage(),
    );
  }
}

class ListPage extends StatelessWidget {
  final List<Contato> listaDeContato = ListaDeContatos().contatos; 
   ListPage({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
      ),
      body: ListView.separated(
        itemCount: listaDeContato.length,

        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(backgroundColor: Colors.lightBlue,
            child: Text(listaDeContato[index].nome[0],style:
            const TextStyle(color: Colors.white,fontSize: 18),)),
            title: Text(listaDeContato[index].nome),
             subtitle: Text(listaDeContato[index].email),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}
