import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  String _password = '';
  String _fecha;
  TextEditingController _inputFieldDateController = new TextEditingController();
  BuildContext contexto;
  List<String> listaDropDownString = [
    "opcion 1",
    "opcion 2",
    "opcion 3",
    "opcion 4"
  ];
  String _opcionSeleccionadaDropDown = "opcion 1";

  @override
  Widget build(BuildContext context) {
    contexto = context;
    return Scaffold(
      appBar: AppBar(
        title: Text("Inputs de texto"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        children: [
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(),
          Divider(),
          _crearDropDown(),
          Divider(),
          _pintarInfoPersona()
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          counter: Text("Contador: 0"),
          hintText: "Nombre del usuario",
          labelText: "Nombre",
          helperText: "Helper de texto",
          suffix: Icon(Icons.accessibility_new),
          icon: Icon(Icons.account_circle)),
      onChanged: (value) {
        setState(() {
          _nombre = value;
        });
      },
    );
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: "Email del usuario",
          labelText: "Email",
          helperText: "Helper del campo",
          suffix: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)),
      onChanged: (value) {
        setState(() {
          _email = value;
        });
      },
    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Password del usuario",
          labelText: "Password",
          helperText: "Helper del campo",
          suffix: Icon(Icons.lock),
          icon: Icon(Icons.lock_open)),
      onChanged: (value) {
        setState(() {
          _password = value;
        });
      },
    );
  }

  Widget _crearFecha() {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
          hintText: "Fecha de nacimiento",
          labelText: "Fecha",
          helperText: "Helper del campo",
          suffix: Icon(Icons.calendar_today),
          icon: Icon(Icons.calendar_view_day)),
      onTap: () {
        FocusScope.of(contexto).requestFocus(new FocusNode());
        _seleccionarFecha();
      },
    );
  }

  Widget _crearDropDown() {
    return DropdownButton(
        items: _getOpcionesDropDown(),
        value: _opcionSeleccionadaDropDown,
        onChanged: (opt) {
          setState(() {
            _opcionSeleccionadaDropDown = opt;
          });
        });
  }

  void _seleccionarFecha() async {
    DateTime picked = await showDatePicker(
        context: contexto,
        initialDate: DateTime.now(),
        firstDate: DateTime(2019),
        lastDate: DateTime(2022),
        locale: new Locale("es", "ES"));

    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputFieldDateController.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem> _getOpcionesDropDown() {
    List<DropdownMenuItem> listaDropDown = new List<DropdownMenuItem>();
    for (var item in listaDropDownString) {
      listaDropDown.add(new DropdownMenuItem(
        child: Text(item),
        value: item,
      ));
    }
    return listaDropDown;
  }

  Widget _pintarInfoPersona() {
    return ListTile(
      title: Text("nombre: " + _nombre),
      subtitle: Text("correo: " + _email),
    );
  }
}
