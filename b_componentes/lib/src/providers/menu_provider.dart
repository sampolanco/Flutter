import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {
  MenuProvider() {}
  Future<List<dynamic>> cargarDataRutas() async {
    String datos = await rootBundle.loadString('data/menu_opts.json');
    Map datosMap = json.decode(datos);
    print(datosMap['rutas']);
    return datosMap['rutas'];
  }
}

final menuProvider = new _MenuProvider();
