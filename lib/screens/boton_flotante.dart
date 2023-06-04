//importacion de librerias
import 'package:flutter/material.dart';

//crea la clase y el estado a cambiar
class Botonflotante extends StatefulWidget {
  const Botonflotante({super.key});
  _Botonflotante createState() => _Botonflotante();
}

//crea widgets a mostrar
class _Botonflotante extends State<Botonflotante> {
  String txt = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boton Flotante'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(txt)],
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
              child: Icon(Icons.visibility),
              onPressed: () => setState(() => txt = "Hola mundo")),
          FloatingActionButton(
              child: Icon(Icons.visibility_off),
              onPressed: () => setState(() => txt = "")),
        ],
      ),
    );
  }
}
