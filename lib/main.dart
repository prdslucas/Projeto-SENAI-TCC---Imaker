import 'package:flutter/material.dart';
//
import 'package:tcc/screens/SplashPage.dart';
import 'package:tcc/screens/Login.dart';
import 'package:tcc/screens/Cadastrese.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);

@override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/InitScreen':(context) => InitScreen(),
        '/SignInScreen' :(context) => SignInScreen(), 
        '/SignUpScreen' :(context) => SignUpScreen()
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
      )
    );
  }
}

