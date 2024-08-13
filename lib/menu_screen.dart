import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Noticias'),
            onTap: () {
              Navigator.pushNamed(context, '/screen1');
            },
          ),
          ListTile(
            title: Text('El cambio de monedas'),
            onTap: () {
              Navigator.pushNamed(context, '/screen2');
            },
          ),
          ListTile(
            title: Text('Lista de tareas'),
            onTap: () {
              Navigator.pushNamed(context, '/screen3');
            },
          ),
          ListTile(
            title: Text('Pondcast'),
            onTap: () {
              Navigator.pushNamed(context, '/screen4');
            },
          ),
        ],
      ),
    );
  }
}
