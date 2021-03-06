import 'package:flutter/material.dart';
import 'package:imaker/checklist.dart';

class Tarefa extends StatefulWidget {
  const Tarefa({ Key? key }) : super(key: key);

  @override
  State<Tarefa> createState() => _TarefaState();
}

class _TarefaState extends State<Tarefa> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Checklist', 
          style: TextStyle(
            fontWeight: FontWeight.bold
            ),
          ),
          backgroundColor: Color(0xAA2171B5),
        ),
        body: Checklist(),
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
                 leading: Icon(Icons.home_outlined),
                 title: const Text('Pagina Inicial',
                 style: TextStyle(fontSize: 17),
                 ),
                 onTap: () {
                   Navigator.pushNamed(context, '/home');
                 },
               ),


              //BOTÃO DA FUNÇÃO AGENDA
               ListTile(
                 leading: Icon(Icons.calendar_today_outlined),
                 title: const Text('Agenda',
                 style: TextStyle(fontSize: 17),
                 ),
                 onTap: () {
                   //Navigator.pushNamed(context, '/agenda');
                 },
               ),

              //BOTÃO DA FUNÇÃO CHECKLIST
               ListTile(
                 leading: Icon(Icons.check_box_outlined),
                 title: Text('Checklist',
                 style: TextStyle(fontSize: 17),
                 ),
                 onTap: () {
                   Navigator.pushNamed(context, '/checklist');
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
      ),
    );
  }
}