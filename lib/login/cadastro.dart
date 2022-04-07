import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignUpScreen> {

  double displayHeight () => MediaQuery.of(context).size.height;
  double displayWidth () => MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( 
        title: Row( 
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [


         
          //BOTÃO DE VOLTAR PARA TELA ANTERIOR
          Container(
            child:
            IconButton(icon: Icon(Icons.keyboard_backspace_rounded,
            size: 35,
            color: Colors.white),
            onPressed: () {
              Navigator.pushNamed(context, '/InitScreen');
            },
           ),
          ), 

          //TITULO CRIAR CONTA
          Container(
            padding: EdgeInsets.symmetric(horizontal: 70),
            child: Text("Criar Conta",
            style: TextStyle(
              fontSize: 22, 
              fontWeight: FontWeight.bold,
              color: Colors.white),
            ),
          ),
         ],
        ),
        backgroundColor: Color(0XAA2171B5),
      ),


      body: SingleChildScrollView(
        child: 

      Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [


          //CONJUNTO DE BOTÕES
          Container(
            margin: EdgeInsets.only(
              top: displayHeight() / 7,
              right: displayWidth() / 20,
              left: displayWidth() / 20,
              ),

            // LARGURA DO BOTÃO
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
            
            // PARTE INTERNA DO BOTÃO
            child: TextField(
              cursorColor: Color(0XAA2171B5),
              decoration: InputDecoration(
                hintText: 'Username',
                hintStyle: TextStyle(
                  color: Colors.grey
                  ),
                prefixIcon: Icon(
                  Icons.account_circle_rounded, 
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


          //POSIÇÃO DO BOTÃO DO USERNAME
          Container(
            margin: EdgeInsets.only(
              top: 15,
              right: displayWidth() / 20,
              left: displayWidth() / 20,
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

            child: TextField(
              cursorColor: Color(0XAA2171B5),
              decoration: InputDecoration(
                hintText: 'Nome Completo',
                hintStyle: TextStyle(
                  color: Colors.grey
                  ),
                prefixIcon: Icon(
                  Icons.person, 
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
          

          //POSIÇÃO DO BOTÃO EMAIL
          Container(
            margin: EdgeInsets.only(
              top: 15,
              right: displayWidth() / 20,
              left: displayWidth() / 20,
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
            child: TextField(
              cursorColor: Color(0XAA2171B5),
              decoration: InputDecoration(
                hintText: 'E-mail',
                hintStyle: TextStyle(
                  color: Colors.grey
                  ),
                prefixIcon: Icon(Icons.alternate_email, color: Color(0XAA2171B5),),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
              ),
            ),
          ),


          //POSIÇÃO DP BOTÃO DE SENHA
          Container(
            margin: EdgeInsets.only(
              top: 15,
              right: displayWidth() / 20,
              left: displayWidth() / 20,
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
            child: TextField(
              obscureText: true,
              cursorColor: Color(0XAA2171B5),
              decoration: InputDecoration(
                hintText: 'Senha',
                hintStyle: TextStyle(
                  color: Colors.grey
                  ),
                prefixIcon: Icon(Icons.vpn_key, color: Color(0XAA2171B5),),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
              ),
            ),
          ),



          Container(
            padding: EdgeInsets.only(
                  top:  30,
                  right: 50,     
                  left:  50,
               ),
            // TAMANHO DO BOTÃO
            height: 80,
            margin: EdgeInsets.symmetric(
              // LARGURA DO BOTÃO
              horizontal: displayWidth() / 7,
              // POSIÇÃO DO BOTÃO
              vertical: 50,
            ),
            child: RaisedButton(
            onPressed:() {
              Navigator.pushNamed(context, '/home');
            },
            color: Color(0XAA2171B5),
            child: Text(
              'Cadastrar', 
              style: TextStyle(
                 fontSize: 25, 
                 fontWeight: FontWeight.bold,
                 color: Colors.white,
                 ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(
              horizontal: displayWidth() / 10,
              vertical: 1,
            ),
           child: Text('Política de privacidade', 
           textAlign: TextAlign.center,
           ),
          ),
        ],
      ),
      ),
      ),
      ),
    );
  }
}