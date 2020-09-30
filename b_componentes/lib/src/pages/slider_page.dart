import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100;
  bool _bloquearCheck = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Slider Page"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _crearSlider(),
            Divider(),
            Expanded(child: _crearImagen()),
            Divider(),
            _crearCheckBox(),
            Divider(),
            _crearSwitchListTile()
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.indigo,
        label: "Tamaño de la imagen",
        divisions: 4,
        value: _valorSlider,
        min: 100.0,
        max: 400.0,
        onChanged: _bloquearCheck
            ? null
            : (valor) {
                _valorSlider = valor;
                setState(() {});
              });
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          "https://media-cdn.tripadvisor.com/media/photo-s/0a/e0/49/76/enchiladas-con-mole.jpg"),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckBox() {
    /*return Checkbox(
      value: _bloquearCheck,
      onChanged: (valor) {
        _bloquearCheck = valor;
        setState(() {});
      },
    );*/
    return CheckboxListTile(
      title: Text("Presionar para bloquear/desbloquear"),
      value: _bloquearCheck,
      onChanged: (valor) {
        _bloquearCheck = valor;
        setState(() {});
      },
    );
  }

  Widget _crearSwitchListTile() {
    return SwitchListTile(
      title: Text("Presionar para bloquear/desbloquear"),
      value: _bloquearCheck,
      onChanged: (valor) {
        _bloquearCheck = valor;
        setState(() {});
      },
    );
  }
}
