import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Ceutec'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('Noticias'),
              onTap: () {
                Navigator.pushNamed(context, '/screen1');
              },
            ),
            ListTile(
              leading: Icon(Icons.currency_exchange),
              title: Text('El cambio de monedas'),
              onTap: () {
                Navigator.pushNamed(context, '/screen2');
              },
            ),
            ListTile(
              leading: Icon(Icons.list_alt),
              title: Text('Lista de tareas'),
              onTap: () {
                Navigator.pushNamed(context, '/screen3');
              },
            ),
            ListTile(
              leading: Icon(Icons.podcasts),
              title: Text('Pondcast'),
              onTap: () {
                Navigator.pushNamed(context, '/screen4');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Bienvenido a nuestra aplicación'),
      ),
    );
  }
}
