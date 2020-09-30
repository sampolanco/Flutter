import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final _elementosLista = ['1', '2', '3', '4', '5', '6'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temp'),
      ),
      body: ListView(
        children: _crearLista(),
      ),
    );
  }

  List<Widget> _crearLista() {
    return _elementosLista.map((elemento) {
      return Column(
        children: [
          new ListTile(
            title: Text(elemento + "!"),
            subtitle: Text("Subtitulo"),
            leading: Icon(Icons.accessibility),
            trailing: Icon(Icons.arrow_back),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
