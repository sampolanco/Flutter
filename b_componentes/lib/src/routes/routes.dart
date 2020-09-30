import 'package:b_componentes/src/pages/alert_page.dart';
import 'package:b_componentes/src/pages/avatar_page.dart';
import 'package:b_componentes/src/pages/card_page.dart';
import 'package:b_componentes/src/pages/home_page.dart';
import 'package:b_componentes/src/pages/input_page.dart';
import 'package:b_componentes/src/pages/list_view_page.dart';
import 'package:b_componentes/src/pages/slider_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getRutasAplicacion() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardsPage(),
    'input': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'list': (BuildContext context) => ListViewPage(),
  };
}
