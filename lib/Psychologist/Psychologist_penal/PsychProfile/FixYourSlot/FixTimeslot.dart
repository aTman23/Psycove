import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'Slot_model.dart';

class FixYourTimeSlot extends StatefulWidget {
  const FixYourTimeSlot({super.key});

  @override
  State<FixYourTimeSlot> createState() => _FixYourTimeSlotState();
}

class _FixYourTimeSlotState extends State<FixYourTimeSlot> {
  void addTimeSlot(TimeOfDay pickedTime) {
    setState(() {
      timeSlots.add(TimeSlot(_formatTime(pickedTime), true));
    });
  }

  String _formatTime(TimeOfDay time) {
    return '${time.hour}:${time.minute < 10 ? '0' + time.minute.toString() : time.minute} ${time.period == DayPeriod.am ? 'AM' : 'PM'}';
  }
  void removeTimeSlot(int index) {
    setState(() {
      timeSlots.removeAt(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
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
            const Helvetica(
              text:'Fix your Time slots',
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
      body:ListView.builder(
        itemCount: timeSlots.length,
        itemBuilder: (context, index) {
          final timeSlot = timeSlots[index];
          return Dismissible(
            onDismissed: (direction) {
            removeTimeSlot(index);
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
                title: Helvetica(text:timeSlots[index].time,),
                trailing: Switch(
                  inactiveTrackColor: Colors.grey,
                  activeColor: Colors.green,
                  value: timeSlots[index].isActive,
                  onChanged: (value) {
                    setState(() {
                      timeSlots[index].isActive = value;
                    });
                  },
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: CircleAvatar(
        backgroundColor: const Color(0xff8ADCFF),
        radius: 30,
        child: IconButton(
          icon: const Icon(Icons.edit,size: 40,),
          onPressed: () async {
              TimeOfDay? pickedTime = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );
              if (pickedTime != null) {
                addTimeSlot(pickedTime);
              }
          },
          tooltip: 'Add Time Slot',
        ),
      ),
    );
  }
}
