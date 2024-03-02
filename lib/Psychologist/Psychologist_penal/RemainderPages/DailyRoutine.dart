import 'package:atman/Psychologist/Psychologist_penal/RemainderPages/remainderModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Fonts/helveticaFont.dart';

class DailyRoutine extends StatefulWidget {
  const DailyRoutine({super.key});

  @override
  State<DailyRoutine> createState() => _DailyRoutineState();
}

class _DailyRoutineState extends State<DailyRoutine> {
  String newWork = '';
  String newTime = '';
  void addRoutine(TimeOfDay pickedTime,String selectTitle) {
    setState(() {
      routines.add(Routine( time: newTime,title:  newWork));
    });
  }

  void removeRoutine(int index) {
    setState(() {
      routines.removeAt(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffF4F4F4),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff8ADCFF),
        title: Row(
          children: [
            IconButton(
              icon: SvgPicture.asset(
                'assets/chatBox_icon/back.svg', // Replace with your SVG file path
                width: 24.h,
                height: 24.h,
              ),
              onPressed: () {
                Navigator.of(context).pop();
                // Handle button press
              },
            ),
            const Spacer(),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: routines.length,
        itemBuilder: (context, index) {
          final timeSlot = routines[index];
          return Dismissible(
            onDismissed: (direction) {
              removeRoutine(index);

            },
            direction: DismissDirection.horizontal,
            key: Key(timeSlot.time),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1,
                      color: const Color(0xff8ADCFF)
                  ),
                  borderRadius: BorderRadius.circular(16)
              ),
              margin: EdgeInsets.symmetric(horizontal: 12,vertical: 5),
              child: ListTile(
                title: Helvetica(text:routines[index].title,alignment: TextAlign.center,
                size: 20,
                 weight: FontWeight.w500
                ),
                trailing:Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffD9D9D9)
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                    child: Helvetica(text:routines[index].time,
                      size: 17,
                      weight: FontWeight.w500
                    ),),
              ),
            ),
          );
        },
      ),
        floatingActionButton: CircleAvatar(
          backgroundColor: const Color(0xff8ADCFF),
          radius: 30,
          child: IconButton(
            icon: const Icon(Icons.add,size: 40,),
            onPressed:_showWorkDialog,
            tooltip: 'Add Time Slot',
          ),
        )
    );
  }
  void _showWorkDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Helvetica(text:'Add Habit',),
        content: TextField(
          onChanged: (value) {
            setState(() {
              newWork = value;
            });
          },
          decoration: InputDecoration(hintText: 'Enter Habit'),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Helvetica(text:'Cancel',),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              _showTimeDialog();
            },
            child: Helvetica(text:'Next',),
          ),
        ],
      ),
    );
  }
  void _showTimeDialog() async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      setState(() {
        routines.add(Routine(time: pickedTime.format(context),title: newWork));
      });
    }
  }
}
