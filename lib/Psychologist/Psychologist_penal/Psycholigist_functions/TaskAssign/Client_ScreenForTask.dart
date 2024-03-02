import 'package:atman/Psychologist/Psychologist_penal/Psycholigist_functions/TaskAssign/taskModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../DetailsComponents/taskContainer.dart';



class ClientTaskScreen extends StatefulWidget {
  const ClientTaskScreen({super.key});

  @override
  State<ClientTaskScreen> createState() => _ClientTaskScreenState();
}

class _ClientTaskScreenState extends State<ClientTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffD3A3F1),
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
            Text(
              'Your Tasks',
              style: GoogleFonts.inder(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 30.w,
            ),
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: task.length,
          itemBuilder: (context,index){
            Task tasks =task[index];
            return TaskContainer(
              isChecked: tasks.check,
              Task: tasks.task,
              isUser: true,
            );
          }),
    );
  }
}
