import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle _estiloTexto = TextStyle(fontSize: 25);
  @override
  Widget build(BuildContext context) {
    //Implementa el la estructura basica de diseño visual.
    //Provee el api para mostrar drawers, snack bars, y bottom
    return Scaffold(
        appBar: AppBar(
          title: Text("Titulo"),
          centerTitle: true,
        ),
        body: Center(
          //Multiples widget en forma de columna
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Contador de botones",
                style: _estiloTexto,
              ),
              Text(
                "0",
                style: _estiloTexto,
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          child: Icon(Icons.restore),
          onPressed: () => {},
        ),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: () => {},
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => {},
        ),
      ],
    );
  }
}
