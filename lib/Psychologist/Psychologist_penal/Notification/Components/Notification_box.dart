import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationBox extends StatelessWidget {
  const NotificationBox( {super.key,required this.isPerson, required this.title, required this.date, required this.time, required this.message, required this.icon, required this.opened});
  final String title;
  final String date;
  final String time;
  final String message;
  final  SvgPicture  icon;
  final bool opened;
  final bool isPerson;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:12.w),
      width: 327.w,
      height: 100.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff000000).withOpacity(0.05),
            blurRadius: 20,
            spreadRadius: 0,
            offset: const Offset(4, 8),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              alignment: Alignment.center,
              child: icon),
          SizedBox(width: 12.w,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            width: 252.w,
            height: 70.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Helvetica(text:title,
                      size: 14,
                      weight: FontWeight.w600,
                    ),
                  CircleAvatar(
                      radius: 8,
                      backgroundColor:opened? Colors.white: const Color(0xff8ADCFF),
                    ),
                  ],
                ),
                Helvetica(
                  text:message,
                  maxlines: 2,
                  overflow: TextOverflow.ellipsis,

                    size: 12,
                    weight: FontWeight.w400,
                  ),
                const Spacer(),
                Row(
                  children: [
                    Helvetica(
                      text:time,
                    size: 10,
                        weight: FontWeight.w500,
                        color:const Color(0xff797C7B)
                    ),
                    const Spacer(),
                    Helvetica(text:date,
                        size: 10,
                        weight: FontWeight.w500,
                        color: const Color(0xff797C7B)
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
