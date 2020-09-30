import 'dart:async';

import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<int> _listaNumeros = new List();
  int _ultimoItem = 0;
  ScrollController _scrollController = new ScrollController();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _agregarDiezElementos();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _obtenerData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List view page")),
      body: Stack(
        children: [_crearLista(), _crearLoading()],
      ),
    );
  }

  Widget _crearLista() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _listaNumeros.length,
      itemBuilder: (BuildContext context, int index) {
        final imagen = _listaNumeros[index];
        return FadeInImage(
            placeholder: AssetImage("assets/jar-loading.gif"),
            image: NetworkImage("https://picsum.photos/id/$index/500/300"));
      },
    );
  }

  void _agregarDiezElementos() {
    for (var i = 1; i < 5; i++) {
      _ultimoItem++;
      _listaNumeros.add(_ultimoItem);
    }
    setState(() {});
  }

  Future<Null> _obtenerData() async {
    _isLoading = true;

    _scrollController.animateTo(_scrollController.position.pixels + 100.0,
        duration: Duration(milliseconds: 200), curve: Curves.fastOutSlowIn);

    setState(() {});
    Duration duracion = new Duration(seconds: 2);
    return new Timer(duracion, respuestaHTTP);
  }

  void respuestaHTTP() {
    _isLoading = false;
    _agregarDiezElementos();
  }

  Widget _crearLoading() {
    if (_isLoading) {
      return Center(
        child: new CircularProgressIndicator(),
      );
    } else {
      return Container();
    }
  }
}
