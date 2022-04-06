import 'package:flutter/material.dart';
import 'package:imaker/agenda.dart';
import 'package:imaker/calendar_screen.dart';
import 'package:imaker/src/home.dart';


void main() => runApp(const MainApp());


class MainApp extends StatelessWidget{
   const MainApp({Key? Key}): super (key: Key);


   @override


   Widget build(BuildContext context) {


     return MaterialApp(
       routes: {
         '/home':(context) => HomeApp(),
         '/agenda':(context) => Agenda(),
         },

         initialRoute: '/home',
    
      );
  }
}