import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../Fonts/helveticaFont.dart';

class EventDetails {
  final String event;
  final String stTime;
  final String EndTime;

  EventDetails(
      {required this.event, required this.stTime, required this.EndTime});
}

class EventAdderScreen extends StatefulWidget {
  DateTime? selectedDay;

  EventAdderScreen({super.key, this.selectedDay});

  @override
  State<EventAdderScreen> createState() => _EventAdderScreenState();
}

class _EventAdderScreenState extends State<EventAdderScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime selectedDay = DateTime.now();

  Map<DateTime, List<EventDetails>> _events = {};

  @override
  Widget build(BuildContext context) {
    final selectedEvents = _events[selectedDay] ?? [];
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff8ADCFF),
        title: Row(
          children: [
            IconButton(
              icon: SvgPicture.asset(
                'assets/chatBox_icon/back.svg',
                // Replace with your SVG file path
                width: 24.h,
                height: 24.h,
              ),
              onPressed: () {
                Navigator.of(context).pop();
                // Handle button press
              },
            ),
            const Spacer(),
            const Helvetica(
              text: 'Calender',
              color: Colors.black,
              size: 24,
              weight: FontWeight.w500,
            ),
            const Spacer(),
            SizedBox(
              width: 30.w,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 12,
            ),
            Center(
                child: Container(
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black), // Border color
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TableCalendar(
                calendarBuilders: CalendarBuilders(
                  markerBuilder: (context, date, events) {
                    return _buildEventMarker(date);
                  },
                ),
                rowHeight: 40,
                daysOfWeekHeight: 40,
                daysOfWeekStyle: const DaysOfWeekStyle(
                    weekdayStyle: TextStyle(
                        fontFamily: "Helvetica",
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    weekendStyle: TextStyle(
                        fontFamily: "Helvetica",
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom:
                            BorderSide(color: Color(0xffEDEDED), width: 1.0),
                      ),
                    )),
                headerStyle: const HeaderStyle(
                    titleCentered: true,
                    leftChevronIcon: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 20,
                      color: Color(0xff8ADCFF),
                    ),
                    rightChevronIcon: Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Color(0xff8ADCFF),
                    ),
                    titleTextStyle: TextStyle(
                        fontFamily: "Helvetica",
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff8ADCFF)),
                    formatButtonVisible: false,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.black, width: 1.0),
                      ),
                    )),
                calendarStyle: const CalendarStyle(
                    todayDecoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffD3A3F1),
                    ),
                    selectedDecoration: BoxDecoration(
                      color: Color(0xff8ADCFF),
                      shape: BoxShape.circle,
                    ),
                    tablePadding: EdgeInsets.all(5),
                    outsideDaysVisible: false,
                    defaultTextStyle: TextStyle(
                        fontFamily: "Helvetica",
                        fontSize: 16,
                        fontWeight: FontWeight.w400)),
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: _focusedDay,
                calendarFormat: _calendarFormat,
                selectedDayPredicate: (day) {
                  return isSameDay(selectedDay, day);
                },
                onDaySelected: (selectedD, focusedDay) {
                  setState(() {
                    selectedDay = selectedD;
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
            )),
            const SizedBox(
              height: 12,
            ),
            const Helvetica(text: "Plan's", size: 20, weight: FontWeight.bold),
            Expanded(
                child: ListView.builder(
              itemCount: selectedEvents.length,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  margin: EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                      color: Color(0xff8ADCFF).withOpacity(0.84),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Color(0xff8ADCFF), width: 1)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Helvetica(
                          text: selectedEvents[index].event,
                          alignment: TextAlign.left,
                          color: Colors.white,
                          size: 17,
                          weight: FontWeight.w400),
                      Padding(
                        padding: const EdgeInsets.only(left: 180),
                        child: Helvetica(
                            text:
                                "- ${selectedEvents[index].stTime} To ${selectedEvents[index].EndTime}",
                            alignment: TextAlign.left,
                            color: Colors.white,
                            size: 12,
                            weight: FontWeight.w400),
                      )
                    ],
                  ),
                  // Add additional event details if needed
                );
              },
            ))
          ],
        ),
      ),
      floatingActionButton: CircleAvatar(
        radius: 30,
        backgroundColor: const Color(0xff8ADCFF),
        child: IconButton(
          onPressed: () => _showAddEventDialog(),
          icon: const Icon(
            Icons.add,
            size: 35,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildEventMarker(DateTime date) {
    final hasEvents = _events[date] != null && _events[date]!.isNotEmpty;
    return Positioned(
      bottom: 5,
      child: Container(
        decoration: BoxDecoration(
          color: hasEvents ? Colors.blue : Colors.transparent,
          shape: BoxShape.circle,
        ),
        width: 8,
        height: 8,
      ),
    );
  }

  Future<void> _showAddEventDialog() async {
    final TextEditingController _eventController = TextEditingController();
    TimeOfDay? _startTime;
    TimeOfDay? _endTime;
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Helvetica(text: 'Add Event'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _eventController,
                decoration: const InputDecoration(labelText: 'Event Title'),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: const Color(0xff8ADCFF),
                          // Text color
                          elevation: 5,
                          // Elevation
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(16), // BorderRadius
                          ),
                        ),
                        onPressed: () async {
                          final initialTime = TimeOfDay.now();
                          final selectedTime = await showTimePicker(
                            context: context,
                            initialTime: initialTime,
                          );
                          if (selectedTime != null) {
                            setState(() {
                              _startTime = selectedTime;
                            });
                          }
                        },
                        child: const Helvetica(
                          text: 'Start Time',
                          alignment: TextAlign.center,
                          color: Colors.black,
                          size: 14,
                          weight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: SizedBox(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: const Color(0xff8ADCFF),
                          // Text color
                          elevation: 5,
                          // Elevation
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(16), // BorderRadius
                          ),
                        ),
                        onPressed: _startTime != null
                            ? () async {
                                final initialTime = TimeOfDay.now();
                                final selectedTime = await showTimePicker(
                                  context: context,
                                  initialTime: initialTime,
                                );
                                if (selectedTime != null) {
                                  setState(() {
                                    _endTime = selectedTime;
                                  });
                                }
                              }
                            : null,
                        child: const Helvetica(
                          text: 'End Time',
                          alignment: TextAlign.center,
                          color: Colors.black,
                          size: 14,
                          weight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Helvetica(text: 'Cancel'),
            ),
            TextButton(
              onPressed: () {
                if (_eventController.text.isNotEmpty &&
                    _startTime != null &&
                    _endTime != null) {
                  setState(() {
                    _events[selectedDay] ??= [];
                    _events[selectedDay]!.add(EventDetails(
                        event: _eventController.text,
                        stTime: _formatTimeOfDay(_startTime!),
                        EndTime: _formatTimeOfDay(_endTime!)));
                  });
                  _eventController.clear();
                  _startTime = null;
                  _endTime = null;
                  Navigator.pop(context);
                }
              },
              child: const Helvetica(text: 'Save'),
            ),
          ],
        );
      },
    );
  }

  String _formatTimeOfDay(TimeOfDay timeOfDay) {
    final now = DateTime.now();
    final dateTime = DateTime(
        now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
    return DateFormat.jm().format(dateTime);
  }
}
