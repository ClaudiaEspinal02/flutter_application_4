import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de tareas'),
      ),
      body: Center(
        child: Text('Estas son tus tareas'),
      ),
    );
  }
}
