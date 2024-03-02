import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> SessionDeclined(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: SizedBox(
          height: 300.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20.h,),
              const Helvetica(
                text:'Currently I dont like to take sessions all other user, turn off my visibility to other users',
                alignment: TextAlign.center,

                  color:Color(0xff000000),
                  size: 20,
                  weight: FontWeight.w500

              ),
              SizedBox(height: 12.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 43,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: const  Color(0xff8ADCFF), // Text color
                        elevation: 5, // Elevation
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // BorderRadius
                        ),
                      ),
                      onPressed: () {

                      },
                      child:  const Helvetica(
                        text:'YES!',

                          color: Colors.black,
                          size: 20,
                          weight: FontWeight.w800,

                      ),
                    ),
                  ),
                  SizedBox(
                    height: 43,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor:const Color(0xff8ADCFF), // Text color
                        elevation: 5, // Elevation
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // BorderRadius
                        ),
                      ),
                      onPressed: () {

                      },
                      child:  const Helvetica(
                        text: 'NOPE',

                          color: Colors.black,
                          size: 20,
                          weight: FontWeight.w800,
                        ),
                      ),
                    ),

                ],
              ),
              SizedBox(height: 12.h,),
              const Helvetica(
                text: 'Disclaimer: Turning off sessions in the app you will not be visible to normal users to connect with clients, only you can add clients manually',
                alignment: TextAlign.left,

                  color: Color(0xff606060),
                  size: 15,
                weight: FontWeight.normal,

              ),
            ],
          ),
        ),
      );
    },
  );
}




































