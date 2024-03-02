import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> ReviewDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Container(
          height: 300.h,
          width: 350.w,
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Helvetica(
                text:'Kindly Share your Review',
                size: 25,
                                 ),
              SizedBox(
                height: 99.h,
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                alignment: Alignment.center,
                width: 320.w,
                height: 60.h,
                child: const Helvetica(
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
                    Navigator.of(context).pop();
                  },
                  child: const Helvetica(
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
      );
    },
  );
}
