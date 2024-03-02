import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OptionCon extends StatefulWidget {
  final String title;
  final SvgPicture initIcon;
  final Widget  next;
  const OptionCon({super.key, required this.title, required this.initIcon, required this.next});
  @override
  State<OptionCon> createState() => _OptionConState();
}

class _OptionConState extends State<OptionCon> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => widget.next),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(children: [
              widget.initIcon,
              SizedBox(
                  width:
                  20.0.w), // Adjust spacing between icon and text
              // Button Text
              Helvetica(
                text:widget.title,

                  color: Colors.black,
                  size: 17,
                  weight: FontWeight.w500,

              ),
            ]),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 12.w,vertical: 5.h),
          width: 315.w,
          height: 2, // Height of the divider
          color: const Color(0xffEEEEEE),
        ),
      ],
    );
  }
}
