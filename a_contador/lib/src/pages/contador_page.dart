import 'package:flutter/material.dart';

final TextStyle _estiloTexto = TextStyle(fontSize: 25);
int _contadorClicks = 0;

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
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
                "Contador de clicks",
                style: _estiloTexto,
              ),
              Text(
                _contadorClicks.toString(),
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
        SizedBox(width: 30.0),
        FloatingActionButton(
          child: Icon(Icons.restore),
          onPressed: reset,
        ),
        Expanded(child: Text("Espacio expanded")),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: restar,
        ),
        SizedBox(width: 15.0),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: agregar,
        ),
      ],
    );
  }

  void agregar() {
    _contadorClicks++;
    setState(() {});
  }

  void restar() {
    _contadorClicks--;
    setState(() {});
  }

  void reset() {
    _contadorClicks = 0;
    setState(() {});
  }
}
