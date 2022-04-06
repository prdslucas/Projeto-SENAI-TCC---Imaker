import 'package:flutter/material.dart';
import 'package:tcc/screens/Login.dart';

class InitScreen extends StatefulWidget {
 
  @override
  _InitScreenState createState() => _InitScreenState();

}

class _InitScreenState extends State<InitScreen> {

  double displayHeight () => MediaQuery.of(context).size.height;
  double displayWidth () => MediaQuery.of(context).size.width;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0XAA2171B5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            // LARGURA DO CONTAINER SUPERIOR
            height: displayHeight() / 3,
            decoration: BoxDecoration(
              color: Color(0XAA2171B5),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(80),
                bottomRight: Radius.circular(150),
              )
            ),

            //  child:   Stack(
            //  children: [
            //   //CONTAINER/PADDING APENAS PARA O ICONE
            //   Container(
            //    child: Container( 
            //      padding: EdgeInsets.only(
            //       top:  80,
            //       right: 20,
            //       left:  20,
            //    ),

              //ICONE APP
              child: 
              // Column(
              //   children: [ 
                Icon(
                  Icons.auto_stories_outlined, 
                  color: Colors.white, 
                  size: 80,
                  ),


              // Container(  
              //   //CONTAINER/PADDING APENAS PARA O TITULO
              //    padding: EdgeInsets.only(
              //     top:  30,
              //     right: 40,
              //     left:  50,
              //  ),
              // child:
              // Text("Escola Virtual",
              // style: TextStyle(
              //   fontSize: 25,
              //   fontWeight: FontWeight.bold,
              //   color: Colors.white
              //   ),
              // ),
              // ),
  //            ]
           ),
  //        )
  //       ),    
  //      ]
  //    )
  //  ),


          
          SizedBox(height: displayHeight() / 4),
        
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: displayWidth() / 10
            ),
            child: RaisedButton(
              
              onPressed: () {
                   Navigator.pushNamed(context, '/SignInScreen');
                  duration: Duration(seconds: 1);
                  curve: Curves.ease;
                   
              },
              child: Text('Entre', style: TextStyle(
                color: Color(0XAA2171B5),
              )),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              color: Colors.white,
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(
              horizontal: displayWidth() / 10
            ),
            child: FlatButton(
              onPressed: () {
                  Navigator.pushNamed(context, '/SignUpScreen');
                  duration: Duration(seconds: 1);
                  curve: Curves.ease;
                
              },
              child: Text(
                'Cadastre-se', 
                style: TextStyle(color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                side: BorderSide(color: Colors.white, width: 2),
              ),
              color: Color(0XAA2171B6),
            ),
          ),
          
       ],
      ),
    
    );
  }
}