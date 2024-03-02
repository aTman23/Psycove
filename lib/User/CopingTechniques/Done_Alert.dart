import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> DoneAlertBox(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return PopScope(
        canPop: false,
        child: AlertDialog(
          content: Container(
            height: 255.h,
            width: 350.w,
            padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Helvetica(
                  text:'Hurray! you crossed a stabling block in your way. you are doing better',
                  alignment: TextAlign.center,

                    color: Color(0xff000000),
                    size: 18,

                ),
                SizedBox(height: 12.h,),
                RatingBar.builder(
                  minRating: 1,
                  initialRating:0,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 35,
                  itemPadding:
                  const EdgeInsets.symmetric(horizontal: 2.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                  },
                ),
                SizedBox(height: 12.h,),
                const Helvetica(
                  text:'let us know how this coping technique helped you',
                  alignment: TextAlign.center,

                    color: Colors.black,
                    size: 15,

                ),
                SizedBox(
                  height: 20.h,
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) =>const CopingList() ),
                      // );
                      Navigator.popUntil(context, ModalRoute.withName('/copinglist'));
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