import 'package:flutter/material.dart';

class TasksWidget extends StatelessWidget {
  const TasksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> tasks = [
      "Tarea 1: Leer capítulo 5",
      "Tarea 2: Completar el proyecto de clase",
      "Tarea 3: Preparar para el examen de matemáticas",
      "Tarea 4: Reunión con el equipo de programación",
      "Tarea 5: Repasar ecuaciones diferenciales",
      "Tarea 6: Enviar correo al docente de programación móvil"
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tareas'),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index]),
            leading: Icon(Icons.check_box_outline_blank),
            trailing: Icon(Icons.more_vert),
          );
        },
      ),
    );
  }
}
