import 'package:flutter/material.dart';

class Checklist extends StatefulWidget {
  const Checklist({ Key? key }) : super(key: key);

  @override
  State<Checklist> createState() => _ChecklistState();
}

class _ChecklistState extends State<Checklist> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        ),
    );
  }
}