import 'package:flutter/material.dart';
import 'package:ka/task.dart';
import 'package:ka/task_Karte.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<Task> tasklist = [
    Task(name: "Ausstehen"),
    Task(name: "Zähne putzen"),
    Task(name: "frühstücken"),
    Task(name: "Musik hören"),
    Task(name: "Einkaufen"),
    Task(name: "Problem Solving"),
    Task(name: "Mittagspause")

  ];
  int v1 = 1;
  void addTasks(){
    setState(() {
      tasklist.add(Task(name: "Value $v1"));
      v1 ++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Meine Aufgaben"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: tasklist.length,
          itemBuilder: (context, index){
            return Task_karte(
                task: tasklist[index],
                taskEntfernen: (){
                    setState(() {
                      tasklist.remove(tasklist[index]);
                    });
                } ,
            );

          },
          padding: EdgeInsets.all(20),

        ),

      floatingActionButton: FloatingActionButton(

        onPressed: addTasks,
        child: Icon(Icons.add),
      ),
      ),

    );
  }
}

