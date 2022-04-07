import 'package:flutter/material.dart';

void main() {
  runApp(SignInScreen());
  }

  class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
 Widget build(BuildContext context) {

final Color hintColor; 

   return MaterialApp(

     home: Scaffold(
       backgroundColor: Color(0XAA2171B5),
       body: Center(
        //  children: <Widget>[
        //  Column(
        //    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // children: <Widget>[
        //   Image.asset('assets/images/logobeauty.png'),
        //   Text('Finding Beauty')
        //],
        child:
         Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: <Widget> [
                  Container( 
                   margin: EdgeInsets.only (
                     top:  1,
                     right: 12,
                     left:  12,
                   ),


                //BOX BRANCO
                height: 400,
                width: 330,
                decoration: BoxDecoration(
                  color: Colors.white,
                border: Border.all(
                color: Color(0XAA2171B5),
                ),
              borderRadius: BorderRadius.circular(50),
             ),

             //ENTRE NA SUA CONTA POSIÇÃO
         child:  Stack(
             children: [
              Container( 
               padding: EdgeInsets.only(
                  top:  30,
                  right: 5,
                  left:  40,
               ),

              child:                  
                 const Text(
                 'Entre na sua conta',
                 style: 
                 TextStyle(
                 fontSize: 30, 
                 fontWeight: FontWeight.bold,
                 color: Color(0XAA2171B5),
                 ),
              ),
            ),


          //BOTÃO DE EMAIL
        Positioned(
          top:  50,
             right: 13,
             left:  13,
          child: 
            Container(
            margin: EdgeInsets.only(
              top: 50,
              right:  20,
              left:20,
              ),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 3,
                ),
              ],
            ),

            //TEXTO DO BOX DE EMAIL
            child: TextField(
              cursorColor: Color(0XAA2171B5),
              decoration: InputDecoration(
                hintText: 'Insira seu e-mail', 
                 hintStyle: TextStyle(
                  color: Colors.grey
                  ),
                prefixIcon: Icon(Icons.alternate_email, 
                color: Color(0XAA2171B5),
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
              ),
            ),
          ),
        ),


      //POSIÇÃO BOTÃO DE SENHA
      Positioned(
             top:  170,
             right: 13,
             left:  13,
        child: 
           Container(
            margin: EdgeInsets.only(
              top: 10,
              right:  20,
              left: 20,
              ),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 3,
                )
              ]
            ),

            //TEXTO DO BOX DE SENHA
            child: TextField(
              obscureText: true,
              cursorColor: Color(0XAA2171B5),
              decoration: InputDecoration(
                hintText: 'Insira sua senha',
                 hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(
                  Icons.vpn_key, 
                  color: Color(0XAA2171B5),
                  ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
              ),
            ),
          ),
        ),


        //POSIÇÃO BOTÃO ENTRE
        Positioned(
          top:  300,
             right: 13,
             left:  13,
          child: 
            Container(
            margin: EdgeInsets.only(
              top: 10,
              right: 85,
              left: 85,
              ),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 3,
                )
              ]
            ),

            //TEXTO DO BOX PARA ENTRAR
            child: RaisedButton(
            onPressed:() {
              Navigator.pushNamed(context, '/home');
            },
            color: Color(0XAA2171B5),
            child: Text(
              'Entre', 
              style: TextStyle(
                 fontSize: 30, 
                 fontWeight: FontWeight.bold,
                 color: Colors.white,
                 ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),

            
          ),
        ),
      ]
    )
   )
       ]
      )
     ),
   )
   );
   
 }
}