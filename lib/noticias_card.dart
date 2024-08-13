// lib/noticias_card.dart
import 'package:flutter/material.dart';
import 'noticias_model.dart'; // Asegúrate de importar el modelo

class NoticiasCard extends StatelessWidget {
  final Noticias noticia;

  NoticiasCard({required this.noticia});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(noticia.imageUrl),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              noticia.title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(noticia.description),
          ),
        ],
      ),
    );
  }
}
