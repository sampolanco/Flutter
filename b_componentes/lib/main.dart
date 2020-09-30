import 'package:b_componentes/src/pages/alert_page.dart';
import 'package:b_componentes/src/pages/avatar_page.dart';
import 'package:b_componentes/src/pages/home_page.dart';
import 'package:b_componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''),
        const Locale('es', 'ES'),
      ],
      title: 'Componentes de flutter',
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: "/",
      routes: getRutasAplicacion(),
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => AlertPage(),
        );
      },
    );
  }
}
