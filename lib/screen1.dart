// lib/screen1.dart
import 'package:flutter/material.dart';
import 'noticias_model.dart';
import 'noticias_card.dart';

class Screen1 extends StatelessWidget {
  final List<Noticias> noticiasList = [
    Noticias(
      title: 'CEUTEC Universidad Tecnologica',
      description: 'Visita Nuestra Universidad.',
      imageUrl:
          'https://dinero.hn/wp-content/uploads/2021/03/Foto-2-Unitec.jpg',
    ),
    Noticias(
      title: 'Disfruta de Nuestras Amenidades',
      description: 'Contamos con espacios adecuados para tus estudios.',
      imageUrl:
          'https://th.bing.com/th/id/OIP.ZMnE_AGZe5rl3wlhYe76sQHaE7?rs=1&pid=ImgDetMain',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Noticias'),
      ),
      body: ListView.builder(
        itemCount: noticiasList.length,
        itemBuilder: (context, index) {
          return NoticiasCard(noticia: noticiasList[index]);
        },
      ),
    );
  }
}
