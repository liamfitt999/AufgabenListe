import 'package:flutter/material.dart';
import 'package:ka/task.dart';

class Task_karte extends StatelessWidget {

  final Task task;
  final Function taskEntfernen;

  Task_karte({this.task , this.taskEntfernen});


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(task.name),
        trailing: IconButton(
          icon: Icon(
            Icons.clear,
            color: Colors.red,
          ),
          onPressed: taskEntfernen,
        ),
      ),
    );
  }


  void addAufgabe(){}
}
