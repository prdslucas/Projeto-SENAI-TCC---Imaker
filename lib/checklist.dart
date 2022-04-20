import 'package:flutter/material.dart';
import 'package:imaker/main.dart';
import 'package:imaker/widgets/todo_card.dart';
import './models/todo_model.dart';
import './models/db_model.dart';
import './widgets/user_input.dart';
import './widgets/todo_list.dart';


class Checklist extends StatefulWidget {
   Checklist({ Key? key}) :super(key: key);

  @override
  _ChecklistState createState() => _ChecklistState();
}

class _ChecklistState extends State<Checklist> {

  var db = DatabaseConnect();

  void addItem(Todo todo) async {
    await db.insertTodo(todo);
    setState(() {});
  }

  void deleteItem(Todo todo) async {
    await db.deleteTodo(todo);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Agenda', 
          style: TextStyle(
            fontWeight: FontWeight.bold
            ),
          ),
          backgroundColor: Color(0xAA2171B5),
        ),
        body: Column(
          children: [
            Todolist(
              insertFunction: addItem, deleteFunction: deleteItem,
            ),
            UserInput(
              insertFunction: addItem,
            ),
          ],
        ),
      ),
    );
  }
}