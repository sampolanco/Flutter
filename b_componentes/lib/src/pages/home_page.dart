import 'package:b_componentes/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  BuildContext contexto;
  @override
  Widget build(BuildContext context) {
    contexto = context;
    return Scaffold(
        appBar: AppBar(
          title: Text('Componentes'),
        ),
        body: _crearBody());
  }

  Widget _crearBody() {
    //menuProvider.cargarDataRutas().then((value) => print("home_page" + value.toString()));
    //return new ListView(children: _crearLista(),);
    return FutureBuilder(
      future: menuProvider.cargarDataRutas(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> rutas) {
        return new ListView(
          children: _crearLista(rutas.data),
        );
      },
    );
  }

  List<Widget> _crearLista(List<dynamic> rutas) {
    return rutas.map((ruta) {
      return Column(
        children: [
          new ListTile(
            title: Text(ruta["texto"] + "!"),
            subtitle: Text("Subtitulo"),
            leading: Icon(
              Icons.accessibility,
              color: Colors.blue,
            ),
            trailing: Icon(Icons.arrow_back),
            onTap: () {
              Navigator.pushNamed(contexto, ruta["ruta"]);
              /*final route = MaterialPageRoute(
                builder: (context) => AlertPage(),
              );
              Navigator.push(contexto, route);*/
            },
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
