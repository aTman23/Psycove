import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Fonts/helveticaFont.dart';

class TaskContainer extends StatefulWidget {
  bool? isChecked;
  final String Task;
  bool isUser;
  TaskContainer(
      {super.key,
      required this.isChecked,
      required this.Task,
      this.isUser = true});

  @override
  State<TaskContainer> createState() => _TaskContainerState();
}

class _TaskContainerState extends State<TaskContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
          border: Border.all(
              color: widget.isUser
                  ? const Color(0xffD3A3F1)
                  : const Color(0xff8ADCFF))),
      child: Row(
        children: [
          Checkbox(
            activeColor: widget.isUser
                ? const Color(0xffD3A3F1)
                : const Color(0xff8ADCFF),
            side: BorderSide(
                color: widget.isUser
                    ? const Color(0xffD3A3F1)
                    : const Color(0xff8ADCFF),
                width: 2),
            value: widget.isChecked,
            onChanged: widget.isUser
                ? (bool? newValue) {
                    setState(() {
                      widget.isChecked = newValue!;
                    });
                  }
                : null,
          ),
          SizedBox(
            width: 280.w,
            child: Helvetica(
              text: widget.Task,
              weight: FontWeight.w400,
              size: 17,
            ),
          ),
        ],
      ),
    );
  }
}
