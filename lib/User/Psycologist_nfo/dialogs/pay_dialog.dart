import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Success_dialog.dart';

Future<void> PayDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
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
                text:'@1800',

                  color:Color(0xff000000),
                size: 25,


              ),
              SizedBox(height: 12.h,),
              SizedBox(
                width: 320.w,
                height: 60.h,
                child: const Helvetica(
                  text:'Pay now to get connected with your desired psychologist and get therapy by them',

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
                    SuccessDialog(context);

                  },
                  child:  const Helvetica(
                    text:'Pay',

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