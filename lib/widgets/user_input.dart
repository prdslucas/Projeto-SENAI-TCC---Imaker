import 'package:flutter/material.dart';
import 'package:imaker/models/todo_model.dart';

class UserInput extends StatelessWidget {
  var textController = TextEditingController();
  final Function insertFunction;
   UserInput({required this.insertFunction, Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5, 
        vertical: 8
        ),
        //color: Colors.grey.shade300,
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 5
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  controller: textController,
                  decoration: InputDecoration(
                    hintText: 'adicionar uma tarefa',
                    border: InputBorder.none
                  ),
                ),
             ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                var myTodo = Todo(
                  title: textController.text, 
                  creationDate: DateTime.now(), 
                  isChecked: false);

                  insertFunction(myTodo);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xAA2171B5),
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: Text('Adicionar',
                style: TextStyle( 
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  ),
                ),
              ),
            )
          ],
        ),
    );
  }
}