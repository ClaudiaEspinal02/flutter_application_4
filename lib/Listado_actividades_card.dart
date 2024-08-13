// lib/Listado_actividades_card.dart
import 'package:flutter/material.dart';
import 'Listado_actividades.dart';

class ActividadCard extends StatelessWidget {
  final Actividad actividad;

  ActividadCard({required this.actividad});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      elevation: 5,
      child: ListTile(
        title: Text(actividad.title,
            style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(actividad.description),
        trailing: Text(
          '${actividad.dueDate.day}/${actividad.dueDate.month}/${actividad.dueDate.year}',
          style: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
