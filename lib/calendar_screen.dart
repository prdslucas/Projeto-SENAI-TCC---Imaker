import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';


var now = DateTime.now();
var firstDay = DateTime(now.year, now.month - 6, now.day);
var lastDay = DateTime(now.year, now.month + 6, now.day);


var focusedDay = DateTime.now();
var selectedDay = DateTime.now();


class CalendarScreen extends StatefulWidget {
  const CalendarScreen({ Key? key }) : super(key: key);

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}


class _CalendarScreenState extends State<CalendarScreen> {

  CalendarFormat format = CalendarFormat.twoWeeks;

  @override
  Widget build(BuildContext context) {
    return Column( 
      children: [
        TableCalendar(
          focusedDay: now, 
          firstDay: firstDay, 
          lastDay: lastDay,

          //calendarFormat: format,
          startingDayOfWeek: StartingDayOfWeek.monday,
          availableCalendarFormats: const{
            CalendarFormat.month: 'Mês',
            CalendarFormat.week: 'Semana',
            CalendarFormat.twoWeeks: '2 Semanas',
          },
          headerStyle: HeaderStyle(
            leftChevronIcon: const Icon(
              Icons.chevron_left_outlined,
              size: 24,
              color: Colors.black54,
            ),

            rightChevronIcon: const Icon(
              Icons.chevron_right_outlined,
              size: 24,
              color: Colors.black54,
            ),
            headerPadding: EdgeInsets.zero,
            formatButtonVisible: true,
            formatButtonShowsNext: false,
            formatButtonDecoration: BoxDecoration(
              color: Color(0xAA2171B5),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(15),
           ),
           formatButtonTextStyle: const TextStyle(color: Colors.black),
           titleTextStyle: const TextStyle(
             color: Colors.black, 
             fontWeight: FontWeight.bold,
             fontSize: 20,
           ),
           titleCentered: true,
         ),


          calendarStyle: CalendarStyle(
            outsideDaysVisible: false,
            selectedDecoration: const BoxDecoration(
              color: Color(0xAA2171B5),
              shape: BoxShape.rectangle,
            ),


            selectedTextStyle: const TextStyle( 
              color: Color(0xAA2171B5),
            ),


            todayDecoration: BoxDecoration(
              color: Color(0xAA2171B5),
              shape: BoxShape.circle,
              //borderRadius: BorderRadius.circular(30),
          ),
          todayTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),

          defaultDecoration: const BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
          ),
          defaultTextStyle: const TextStyle(
            color: Colors.black,
          ),

          weekendDecoration: const BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
          ),

          weekendTextStyle: const TextStyle(
            color: Color(0xAA2171B5),
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
            return Center(
              child: Text(text,style: const TextStyle(color: Color(0xAA2171B5),
               ),
              ),
            );
          },
        ),
       ),
      ],
    );
  }
}