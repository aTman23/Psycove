import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black), // Border color
        borderRadius: BorderRadius.circular(10.0),),
      child: TableCalendar(
        rowHeight: 35,
        daysOfWeekHeight: 40,
        daysOfWeekStyle: const DaysOfWeekStyle(
          weekdayStyle: TextStyle(fontFamily: "Helvetica",fontWeight: FontWeight.w400,fontSize: 16),
            weekendStyle: TextStyle(fontFamily: "Helvetica",fontWeight: FontWeight.w400,fontSize: 16),

            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color(0xffEDEDED), width: 1.0),
              ),
            )
        ),
        headerStyle: const HeaderStyle(
          titleCentered: true,
          leftChevronIcon: Icon(Icons.arrow_back_ios_new_outlined,size: 20,color:Color(0xff8ADCFF) ,),
            rightChevronIcon: Icon(Icons.arrow_forward_ios,size: 20,color:Color(0xff8ADCFF) ,),
          titleTextStyle:
            TextStyle(fontFamily: "Helvetica",fontWeight: FontWeight.w500,fontSize: 18,color: Color(0xff8ADCFF),),
            formatButtonVisible: false,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.black, width: 1.0),
              ),
            )
        ),
        calendarStyle: const CalendarStyle(
          todayDecoration: BoxDecoration(
              color:Color(0xffD3A3F1),
              shape: BoxShape.circle
          ),
          selectedDecoration: BoxDecoration(
            color:Color(0xff8ADCFF),
            shape: BoxShape.circle
          ),
          tablePadding: EdgeInsets.all(5),
          outsideDaysVisible: false,
          defaultTextStyle: TextStyle(
            fontFamily: "Helvetica",
            fontSize: 16,
            fontWeight: FontWeight.w400
          )
        ),
        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: _focusedDay,
        calendarFormat: _calendarFormat,
        selectedDayPredicate: (day) {
          return isSameDay(_selectedDay, day);
        },
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          });
        },
        onFormatChanged: (format) {
          setState(() {
            _calendarFormat = format;
          });
        },
        onPageChanged: (focusedDay) {
          _focusedDay = focusedDay;
        },
      ),
    );
  }
}
