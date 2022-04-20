import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:imaker/agenda.dart';
import 'package:imaker/calendar_screen.dart';
import 'package:imaker/checklist.dart';
import 'package:imaker/login/cadastro.dart';
import 'package:imaker/login/login.dart';
import 'package:imaker/login/splashPage.dart';
import 'package:imaker/src/home.dart';
import 'package:imaker/tarefa.dart';
=======
//
import 'package:tcc/screens/SplashPage.dart';
import 'package:tcc/screens/Login.dart';
import 'package:tcc/screens/Cadastrese.dart';
>>>>>>> b80c4c2a64678c6de56d714f55de7c86075a76e3

void main() => runApp(MyApp());

<<<<<<< HEAD

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  
  runApp(MainApp());
}

class MainApp extends StatelessWidget{
    MainApp({Key? Key}): super (key: Key);

  
  
   @override
 

   Widget build(BuildContext context) {


     return MaterialApp(
       routes: {
        '/InitScreen':(context) => InitScreen(),
        '/SignInScreen' :(context) => SignInScreen(), 
        '/SignUpScreen' :(context) => SignUpScreen(),
        '/home' :(context) => HomeApp(),
        '/agenda' :(context) => Agenda(),
        '/checklist' : (context) => Checklist(),
      },
      initialRoute: '/InitScreen',

=======
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

>>>>>>> b80c4c2a64678c6de56d714f55de7c86075a76e3
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
<<<<<<< HEAD
      );
=======
    );
>>>>>>> b80c4c2a64678c6de56d714f55de7c86075a76e3
  }
}

