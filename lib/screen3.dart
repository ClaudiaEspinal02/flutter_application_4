// lib/screen2.dart
import 'package:flutter/material.dart';
import 'Listado_actividades_card.dart';
import 'Listado_actividades.dart';

class Screen3 extends StatelessWidget {
  final List<Actividad> actividadesList = [
    Actividad(
      title: 'Tarea de Matemáticas',
      description: 'Resolver los ejercicios del capítulo 5.',
      dueDate: DateTime(2024, 8, 20),
    ),
    Actividad(
      title: 'Foro de Programación',
      description: 'Participar en el foro de programación.',
      dueDate: DateTime(2024, 8, 22),
    ),
    Actividad(
      title: 'Examen de Ciencias',
      description: 'Prepararse para el examen final de ciencias.',
      dueDate: DateTime(2024, 8, 30),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Actividades Pendientes'),
      ),
      body: ListView.builder(
        itemCount: actividadesList.length,
        itemBuilder: (context, index) {
          return ActividadCard(actividad: actividadesList[index]);
        },
      ),
    );
  }
}
