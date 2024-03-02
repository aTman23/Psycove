import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../Fonts/helveticaFont.dart';


class BookAppoinment extends StatefulWidget {
  const BookAppoinment({super.key});

  @override
  State<BookAppoinment> createState() => _BookAppoinmentState();
}

class _BookAppoinmentState extends State<BookAppoinment> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 30.w),
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            height: 460.h,
            width: 355.w,
            decoration: BoxDecoration(
              color: const Color(0xffD3A3F1).withOpacity(0.20),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xffD3A3F1).withOpacity(0.10), // Shadow color
                  spreadRadius: 5, // Spread radius
                  blurRadius: 7, // Blur radius
                  offset: const Offset(0, 3), // Offset in x and y directions
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/like.svg'),
                SizedBox(
                  height: 26.h,
                ),
                const Helvetica(
                  text:"Thank You",
                  size: 38,
                   weight: FontWeight.w800,

                ),
                SizedBox(
                  height: 12.h,
                ),
                const Helvetica(
                  text:
                  "Your Appointment is Successful",
                  alignment: TextAlign.center,
                  size: 20,
                   weight: FontWeight.normal,
                      color: Color(0xff797C7B)),

                SizedBox(
                  height: 12.h,
                ),
                SizedBox(
                  width: 321.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: const Color(0xffD3A3F1), // Text color
                      elevation: 2,
                      shadowColor: const Color(0xff803a9f), // Elevation
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // BorderRadius
                      ),
                    ),
                    onPressed: () {
                      Navigator.popUntil(context, ModalRoute.withName('/homepage'));
                    },
                    child: const Helvetica(
                      text:'Done',

                        color: Colors.white,
                        size: 14,
                        weight: FontWeight.w600,

                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                InkWell(
                  onTap: (){},
                  child: const Helvetica(text:
                    "Edit your appointment",

                      color: Color(0xff797C7B),
                      size: 14,
                      weight: FontWeight.w600,

                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}