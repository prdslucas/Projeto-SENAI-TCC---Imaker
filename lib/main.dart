import 'package:flutter/material.dart';
import 'package:imaker/agenda.dart';
import 'package:imaker/calendar_screen.dart';
import 'package:imaker/login/cadastro.dart';
import 'package:imaker/login/login.dart';
import 'package:imaker/login/splashPage.dart';
import 'package:imaker/src/home.dart';


void main() => runApp(const MainApp());


class MainApp extends StatelessWidget{
   const MainApp({Key? Key}): super (key: Key);


   @override


   Widget build(BuildContext context) {


     return MaterialApp(
        routes: {
        '/InitScreen':(context) => InitScreen(),
        '/SignInScreen' :(context) => SignInScreen(), 
        '/SignUpScreen' :(context) => SignUpScreen(),
        '/home':(context) => HomeApp(),
        '/agenda':(context) => Agenda(),
      },
      initialRoute: '/InitScreen',

      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageView(
        children: <Widget>[
          Scaffold(
            body: SignInScreen(),
          ),
          Scaffold(
            body: InitScreen(),
          ),
          Scaffold(
            body: SignUpScreen(),
          ),
        ],
      ),
    );
  }
}