import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Component/SwitchButtonContainer.dart';
import 'Component/textfielsContainer.dart';
import 'FixYourSlot/FixTimeslot.dart';

class PsyAcoountInfo extends StatefulWidget {
  const PsyAcoountInfo({super.key});

  @override
  State<PsyAcoountInfo> createState() => _PsyAcoountInfoState();
}

class _PsyAcoountInfoState extends State<PsyAcoountInfo> {
  bool switchValueA = false;
  bool switchValueB = false;
  bool switchValueC = false;
  bool switchValueD = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffF4F4F4),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const  Color(0xff8ADCFF),
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
            const Helvetica(
              text:'Account info',
              color: Colors.black,
                size: 24,
                weight: FontWeight.w500,

            ),
            const Spacer(),
            SizedBox(
              width: 30.w,
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10.w, top: 40.h, right: 10.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextfieldContainer(
                Title: 'E-Mail address',
                hinttitle: 'abcdefhg@gmail.com',
              ),
              SizedBox(
                height: 10.h,
              ),
              const Divider(
                color:
                Color(0xffEEEEEE), // Customize the color of the line
                thickness: 2.0, // Customize the thickness of the line
              ),
              const TextfieldContainer(
                  Title: 'Phone Number',
                  hinttitle:'1234567890'),
              SizedBox(
                height: 10.h,
              ),
              const Divider(
                color:
                Color(0xffEEEEEE), // Customize the color of the line
                thickness: 2.0, // Customize the thickness of the line
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 13.w,
                ),
                child: Helvetica(
                  text:'Notification',
                  color: const Color(0xff606060),
                  size: 18,
                  ),

              ),
              Container(
                padding: EdgeInsets.only(left: 25.w, top: 15.h,),
                width: 380.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SwitchButtonContainer(
                        Text: 'Notifications from anonymous community',
                        Switchbutton: switchValueA),
                    SwitchButtonContainer(
                        Text: 'Notifications from client chat',
                        Switchbutton: switchValueB),
                    SwitchButtonContainer(
                        Text: 'Notifications from appointment booking',
                        Switchbutton: switchValueC),
                    SwitchButtonContainer(
                        Text: 'Notifications for session starting and ending',
                        Switchbutton:switchValueD),
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 10.w,
                  right: 10.w,
                ),
                child: const Divider(
                  color: Color(0xffEEEEEE), // Customize the color of the line
                  thickness: 2.0, // Customize the thickness of the line
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 378.w,
                padding: EdgeInsets.only(left: 21.w, right: 20.w,),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Helvetica(
                      text:'Terms & Conditions',
                      color: Color(0xff000000),
                      size: 20,
                       weight: FontWeight.w400,
                    ),

                    IconButton(
                      icon: SvgPicture.asset(
                        'assets/arrow.svg', // Replace with your SVG file path
                        width: 24.h,
                        height: 24.h,
                      ),
                      onPressed: () {
                        // Handle button press
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 378.w,
                padding: EdgeInsets.only(left: 21.w, right: 20.w,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Helvetica(
                      text:'Fix your Time slots',
                       color: Color(0xff000000),
                      size: 20,
                       weight: FontWeight.w400,

                    ),
                    IconButton(
                      icon: SvgPicture.asset(
                        'assets/arrow.svg', // Replace with your SVG file path
                        width: 24.h,
                        height: 24.h,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>const FixYourTimeSlot()),
                        );
                        // Handle button press
                      },
                    ),
                  ],
                ),
              )

            ],

          ),
        ),
      ),
    );
  }
}
