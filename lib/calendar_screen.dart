import 'package:flutter/material.dart';
import 'package:imaker/src/event.dart';
import 'package:table_calendar/table_calendar.dart';


var now = DateTime.now();
var firstDay = DateTime(1999);
var lastDay = DateTime(2050);


// var focusedDay = DateTime.now();
// var selectedDay = DateTime.now();


class CalendarScreen extends StatefulWidget {
  const CalendarScreen({ Key? key }) : super(key: key);

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}


class _CalendarScreenState extends State<CalendarScreen> {

  late Map<DateTime,List<Event>> selectedEvents;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  CalendarFormat format = CalendarFormat.month;

  TextEditingController _eventController = TextEditingController();

  @override
  void initState(){
    selectedEvents = {};
    super.initState();
  }

  List<Event> _getEventsfromDay(DateTime date) {
    return selectedEvents[date] ?? [];
  }

  @override
  void dispose(){
    _eventController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column( 
      children: [
        TableCalendar(
          focusedDay: now, 
          firstDay: firstDay, 
          lastDay: lastDay,
          calendarFormat: format,

          //PRIMEIRO DIA EXIBIDO NO CALENDARIO
          startingDayOfWeek: StartingDayOfWeek.sunday,


          daysOfWeekVisible: true,
          onDaySelected: (
            DateTime selectDay, 
            DateTime focusDay) {
          
            setState(() {
              selectedDay = selectDay;
              focusedDay = focusDay;
            });
            print(focusedDay);
          },


          availableCalendarFormats: const{
            CalendarFormat.month: 'Mês',
            CalendarFormat.week: 'Semana',
            CalendarFormat.twoWeeks: '2 Semanas',
          },


          selectedDayPredicate: (DateTime date){
            return isSameDay(selectedDay, date);
          },


          eventLoader: _getEventsfromDay,


          //CABEÇAlHO DO CALENDARIO
          headerStyle: HeaderStyle(
            //SETINHA DA ESQUERDA
            leftChevronIcon: const Icon(
              Icons.chevron_left_outlined,
              size: 24,
              color: Colors.black54,
            ),


            //SETINHA DA DIREITA
            rightChevronIcon: const Icon(
              Icons.chevron_right_outlined,
              size: 24,
              color: Colors.black54,
            ),
            
            
            headerPadding: EdgeInsets.zero,
            //BOTÃO PARA MUDAR O FORMATO DO CALENDARIO
            formatButtonVisible: false,
            
            formatButtonShowsNext: true,


            //BOTÃO PARA MUDAR O FORMATO DE EXIBIÇÃO DO CALENDARIO
            formatButtonDecoration: BoxDecoration(
              color: Color(0xAA2171B5),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(15),
           ),


          //ESTILO TEXTO DO BOTÃO PARA MUDAR O FORMATO DE EXIBIÇÃO DO CALENDARIO
           formatButtonTextStyle: TextStyle(
             color: Colors.white
             ),


            //ESTILO DO NOME DO MÊS
           titleTextStyle: TextStyle(
             color: Colors.black, 
             fontWeight: FontWeight.bold,
             fontSize: 20,
           ),
           titleCentered: true,
         ),


          //CONFIGURAÇÕES DO ESTILO DO CALENDARIO
          calendarStyle: CalendarStyle(
            isTodayHighlighted: true,

            //EXIBIÇÃO DOS DIAS DA SEMANA DO MÊS ANTERIOR OU POSTERIOR NO MÊS ATUAL
            outsideDaysVisible: true,


            //BOX DO DIA ATUAL
            todayDecoration: BoxDecoration(
              color: Color(0xAA2171B5),
              shape: BoxShape.circle,
          ),
          //ESTILO DO DIA ATUAL
          todayTextStyle:  TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),


          //BOX DOS DIAS DA SEMANA
          defaultDecoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
          ),
          //ESTILO DOS DIAS DA SEMANA
          defaultTextStyle: TextStyle(
            color: Colors.black,
          ),


          //BOX DOS DIAS DO FINAL DE SEMANA
          weekendDecoration:  BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
          ),
          //ESTILO DOS DIAS DO FINAL DE SEMANA
          weekendTextStyle: TextStyle(
            color: Colors.red,
          ),


          //BOX DO DIA SELECIONADO
          selectedDecoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          //ESTILO DO TEXTO DO DIA SELECIONADO
          selectedTextStyle: TextStyle( 
            color: Colors.white,
          ),
        ),


        calendarBuilders: CalendarBuilders(
          dowBuilder: (context, day){
            String text;
            if(day.weekday == DateTime.sunday){
              text = 'Dom';
            }else if (day.weekday == DateTime.monday){
              text = 'Seg';
            }else if (day.weekday == DateTime.tuesday){
              text = 'Ter';
            }else if (day.weekday == DateTime.wednesday){
              text = 'Qua';
            }else if (day.weekday == DateTime.friday){
              text = 'Sex';
            }else if (day.weekday == DateTime.saturday){
              text = 'Sab';
            }else {
              text = 'Qui';
            }

            //ESTILO DO TEXTO DOS DIAS DA SEMANA
            return Center(
              child: Text(
                text,style: const TextStyle(
                  color: Color(0xAA2171B5),
               ),
              ),
            );

          },
        ),
       ),

       ..._getEventsfromDay(selectedDay).map((
        Event event) => ListTile(
          title: Text(event.title),
       ), 
      ),

       FloatingActionButton.extended(
         backgroundColor: Color(0xAA2171B5),
         onPressed: () => showDialog(
           context: context, 
           builder: (context) => AlertDialog(
             title: Text("Adicionar Evento"),
             content: TextFormField(controller: _eventController,
             ),
             actions: [
               TextButton(
                 onPressed: () => Navigator.pop(context), 
                 child: Text("Cancelar")
                 ),
                 TextButton(
                 onPressed: () {
                   if(_eventController.text.isEmpty){
                  
                   }else {
                     if (selectedEvents[selectedDay] != null) {
                       selectedEvents[selectedDay]!.add(
                         Event(title: _eventController.text),
                       );
                     } else {
                       selectedEvents[selectedDay] = [
                         Event(title: _eventController.text)
                       ];
                     }
                     
                   }
                    Navigator.pop(context);
                     _eventController.clear();
                     setState(() {});
                     return;
                 }, 
                 child: Text("Ok")
                 ),
              ],
            ),
           ), 
         label: Text("Adicionar um novo evento"),
         icon: Icon(Icons.add,),
         ),
      ],
    );
  }
}