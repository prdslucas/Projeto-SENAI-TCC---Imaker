import 'package:flutter/material.dart';

class HomeApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xAA2171B5),
        centerTitle: true,
        title: Text ('Protaganismo Estudantil',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ), 

          ),


     body: 

     Column(
       children: <Widget>[
            //BOTÃO DA AGENDA 
            Container(
              color: Color(0xAA2171B5),
              height: 100,
              margin: EdgeInsets.symmetric(
                horizontal: 1,
                vertical: 0,
                ),

              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    ),

                Icon(Icons.calendar_today_outlined,
                size: 40,
                color: Colors.white,
                ),

                Text("  Agenda",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                ),

                IconButton(
                  padding: EdgeInsets.only(left: 160),
                  onPressed: () {
                      Navigator.pushNamed(context, '/agenda');
                  }, 
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                ],

              ),               
            ),

            //BOTÃO DE CHECKLIST 
            Container(
              color: Color(0xAA2171B5),
              height: 100,
              margin: EdgeInsets.symmetric(
                horizontal: 1,
                vertical: 0,
                ),

              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    ),

                Icon(Icons.add_box_outlined,
                size: 40,
                color: Colors.white,
                ),

                Text("  Checklist",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                ),

                IconButton(
                  padding: EdgeInsets.only(left: 130),
                  onPressed: () {
                      Navigator.pushNamed(context, '/agenda');
                  }, 
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                ],

              ),               
            ),

            //BOTÃO DO MURAL DE FOTOS 
            Container(
              color: Color(0xAA2171B5),
              height: 100,
              margin: EdgeInsets.symmetric(
                horizontal: 1,
                vertical: 0,
                ),

              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    ),

                Icon(Icons.add_a_photo_outlined,
                size: 40,
                color: Colors.white,
                ),

                Text("  Mural de fotos",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                ),

                IconButton(
                  padding: EdgeInsets.only(left: 50),
                  onPressed: () {
                      Navigator.pushNamed(context, '/agenda');
                  }, 
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                ],

              ),               
            ),

            //BOTÃO DAS VÍDEOS AULAS 
            Container(
              color: Color(0xAA2171B5),
              height: 100,
              margin: EdgeInsets.symmetric(
                horizontal: 1,
                vertical: 0,
                ),

              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    ),

                Icon(Icons.ondemand_video_outlined,
                size: 40,
                color: Colors.white,
                ),

                Text("  Vídeo aulas",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                ),

                IconButton(
                  padding: EdgeInsets.only(left: 85),
                  onPressed: () {
                      Navigator.pushNamed(context, '/agenda');
                  }, 
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                ],

              ),               
            ),
            ]
     ),

     //MENU LATERAL 
     drawer: Drawer(
        child: ListView (
           padding: EdgeInsets.zero,
           children: [
              DrawerHeader(
                padding: EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: Color(0xAA2171B5),
               ),

               child: Text('Protaganismo estudantil',
               style: TextStyle(fontSize: 20,color: Colors.white,)
                ),
               ),


              //BOTÃO DA FUNÇÃO AGENDA
               ListTile(
                 leading: Icon(Icons.calendar_today_outlined),
                 title: const Text('Agenda',
                 style: TextStyle(fontSize: 17),
                 ),
                 onTap: () {
                   Navigator.pushNamed(context, '/agenda');
                 },
               ),


              //BOTÃO DA FUNÇÃO CHECKLIST
               ListTile(
                 leading: Icon(Icons.check_box_outlined),
                 title: Text('Checklist',
                 style: TextStyle(fontSize: 17),
                 ),
                 onTap: () {
                   //Navigator.pushNamed(context, '/imoveis');
                 },
               ),


              //BOTÃO DA FUNÇÃO MURAL DE FOTOS
               ListTile(
                 leading: Icon(Icons.camera_alt_outlined),
                 title: Text('Mural de Fotos',
                 style: TextStyle(fontSize: 17),
                 ),
                 onTap: () {
                   //Navigator.pushNamed(context, '/home');
                 },
               ),

              //BOTÃO DA FUNÇÃO DE VIDEO AULA
               ListTile(
                 leading: Icon(Icons.ondemand_video_outlined),
                 title: Text('Vídeo Aula',
                 style: TextStyle(fontSize: 17),
                 ),
                 onTap: () {
                   //Navigator.pushNamed(context, '/home');
                 },
               ),
          ],
        ),
      ),

    );







  }
}