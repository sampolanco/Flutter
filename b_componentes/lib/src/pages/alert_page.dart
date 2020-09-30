import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  BuildContext _contexto;
  @override
  Widget build(BuildContext context) {
    _contexto = context;
    return Scaffold(
      appBar: new AppBar(
        title: Text("Alert Page"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("Mostrar alerta"),
            color: Colors.blue,
            textColor: Colors.white,
            shape: StadiumBorder(),
            onPressed: () {
              _mostrarAlerta();
            }),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }

  void _mostrarAlerta() {
    showDialog(
        context: _contexto,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            title: Text("Titulo"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Contenido texto"),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Cancelar")),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Ok")),
            ],
          );
        });
  }
}
