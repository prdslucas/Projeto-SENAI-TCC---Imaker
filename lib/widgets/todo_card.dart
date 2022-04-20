import 'package:flutter/material.dart';
import 'package:imaker/models/todo_model.dart';
import 'package:intl/intl.dart';


class Todocard extends StatefulWidget {
  final int id;
  final String title;
  final DateTime creationDate;
  bool isChecked;
  final Function insertFunction;
  final Function deleteFunction;
  Todocard(
    { required this.id,
    required this.title,
    required this.creationDate,
    required this.isChecked,
    required this.insertFunction,
    required this.deleteFunction,
      Key? key }) : super(key: key);

  @override
  State<Todocard> createState() => _TodocardState();
}

class _TodocardState extends State<Todocard> {
  @override
  Widget build(BuildContext context) {
    var anotherTodo = Todo(
      id: widget.id,
      title: widget.title, 
      creationDate: widget.creationDate, 
      isChecked: widget.isChecked
      );
    return Card(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: Checkbox(
              value: widget.isChecked,
              onChanged: (bool? value) {
                setState(() {
                  widget.isChecked = value!;
                });
                anotherTodo.isChecked = value!;
                widget.insertFunction(anotherTodo);
              },
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                style: TextStyle( 
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
                ),

                SizedBox( height: 5),
                Text(
                  DateFormat('dd MMM yyyy - hh:mm aaa').format(widget.creationDate),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: 
                  FontWeight.bold,
                  color: Color(0xFF8F8F8F),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
            widget.deleteFunction(anotherTodo);
          }, 
            icon: Icon(Icons.close),
          ),
        ],
      ),
    );
  }
}