import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../review_dialog.dart';

Future<void> SuccessDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return PopScope(
        canPop: false,
        child: AlertDialog(
          content: Container(
            height: 300.h,
            width: 350.w,
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: SvgPicture.asset('assets/coin.svg',
                    height: 100,
                    width: 100,
                  ),
                ),
                SizedBox(height: 25.h,),
                const Helvetica(
                  text:'Successful',

                    color: Color(0xff000000),
                    size: 25,

                ),
                SizedBox(height: 12.h,),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  alignment: Alignment.center,
                  width: 320.w,
                  height: 60.h,
                  child:  const Helvetica(
                    text:'Congrats! you payment is successful.Get therapy by your desired therapist',

                      color: Color(0xff606060),
                      size: 15,

                                        ),
                ),
                SizedBox(
                  height: 19.h,
                ),
                SizedBox(
                  width: 116,
                  height: 43,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: const Color(0xffD3A3F1), // Text color
                      elevation: 5, // Elevation
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // BorderRadius
                      ),
                    ),
                    onPressed: () {
                      ReviewDialog(context);
                    },
                    child:  const Helvetica(
                      text:'Done',
                        color: Colors.black,
                      size: 20,
                       weight: FontWeight.w800,

                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}