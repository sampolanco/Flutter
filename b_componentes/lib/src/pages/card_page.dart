import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Cards Page"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        children: [
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2()
        ],
      ),
    );
  }
}

Widget _cardTipo1() {
  return Card(
      child: Column(
    children: [
      ListTile(
        leading: Icon(Icons.access_alarm),
        title: Text("Titulo"),
        subtitle: Text("Urganda la desconocida Amadís de Gaula a don Quijote de la Mancha " +
            "Don Belianís de Grecia a don Quijote de la Mancha La señora Oriana" +
            " a Dulcinea del Toboso Gandalín, escudero de Amadís de Gaula, a Sancho" +
            " Panza, escudero de don Quijote Del Donoso, poeta entreverado, a Sancho Panza y Rocinante"),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FlatButton(
            child: Text('Cancelar'),
            onPressed: () => {},
          ),
          FlatButton(
            child: Text('Ok'),
            onPressed: () => {},
          )
        ],
      )
    ],
  ));
}

Widget _cardTipo2() {
  return Card(
      child: Column(
    children: [
      //Image(
      //    image: NetworkImage(
      //        "https://media-cdn.tripadvisor.com/media/photo-s/0a/e0/49/76/enchiladas-con-mole.jpg")),
      FadeInImage(
        placeholder: AssetImage("assets/jar-loading.gif"),
        image: NetworkImage(
            "https://media-cdn.tripadvisor.com/media/photo-s/0a/e0/49/76/enchiladas-con-mole.jpg"),
        fadeInDuration: Duration(milliseconds: 200),
        height: 300,
        fit: BoxFit.cover,
      ),
      Container(
        padding: EdgeInsets.all(10.0),
        child: Text("Enchiladas"),
      )
    ],
  ));
}
