import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../Fonts/helveticaFont.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}
class _AccountState extends State<Account> {
  bool switchValue1 = false;
  bool switchValue2 = false;
  bool switchValue3 = false;
  bool switchValue4 = false;
  bool switchValue5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffF4F4F4),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffD3A3F1),
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
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 10.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Helvetica(
                      text:'E-Mail address',

                        color: Color(0xff606060),
                        size: 18,
                        weight: FontWeight.w400,

                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 40.h,
                      width: 300.w,
                      padding: EdgeInsets.only(left: 30.w, ),
                      child: TextField(
                        style: const TextStyle(
                          fontFamily: "Helvetica",
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                          hintText: 'abcdefhg@gmail.com',
                          hintStyle: const TextStyle(
                            fontFamily: "Helvetica",
                              fontSize: 17.0, // Set the desired font size
                              fontWeight: FontWeight.normal // Set the desired font weight
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            borderSide: const BorderSide(
                              color: Color(0xffD3A3F1), // Regular border color
                              width: 5.0, // Regular border thickness
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const Divider(
                      color:
                      Color(0xffEEEEEE), // Customize the color of the line
                      thickness: 2.0, // Customize the thickness of the line
                    ),
                    const Helvetica(
                      text:'Phone Number',
                        color: Color(0xff606060),
                        size: 18,
                        weight: FontWeight.w400,


                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 40.h,
                      width: 300.w,
                      padding: EdgeInsets.only(left: 30.w,),
                      child: TextField(
                        style: const TextStyle(
                          fontFamily: "Helvetica",
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: ('1234567890'),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                          hintStyle:const TextStyle(
                            fontFamily: "Helvetica",
                              fontSize: 17.0, // Set the desired font size
                              fontWeight: FontWeight.normal // Set the desired font weight
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            borderSide: const BorderSide(
                              color: Color(0xffD3A3F1), // Regular border color
                              width: 5.0, // Regular border thickness
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const Divider(
                      color:
                      Color(0xffEEEEEE), // Customize the color of the line
                      thickness: 2.0, // Customize the thickness of the line
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 13.w,
                ),
                child: const Helvetica(text:
                  'Notification',
                    color: Color(0xff606060),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 210.h,
                          child: const Helvetica(text:
                            'Notifications from anonymous community',
                              color: Color(0xff606060),
                              size: 15,
                              weight: FontWeight.w400,

                          ),
                        ),
                        Switch(
                          value: switchValue1,
                          onChanged: (value) {
                            setState(() {
                              switchValue1 = value;
                            });
                          },
                          activeColor: Colors.green,
                          inactiveTrackColor: Colors.grey,
                          // Set the color when the switch is on
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 210.h,
                          child:  const Helvetica(text:
                            'Notifications from Psychologist',
                              color: Color(0xff606060),
                              size: 15,
                              weight: FontWeight.w400,

                          ),
                        ),
                        Switch(
                          value: switchValue2,
                          onChanged: (value) {
                            setState(() {
                              switchValue2 = value;
                            });
                          },
                          activeColor: Colors.green,
                          inactiveTrackColor: Colors.grey,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 210.h,
                          child: const Helvetica(text:
                            'Notifications from appointment booking',
                              color: Color(0xff606060),
                              size: 15,
                              weight: FontWeight.w400,

                          ),
                        ),
                        Switch(
                          value: switchValue3,
                          onChanged: (value) {
                            setState(() {
                              switchValue3 = value;
                            });
                          },
                          activeColor: Colors.green,
                          inactiveTrackColor: Colors.grey,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 210.h,
                          child:  const Helvetica(text:
                            'Notifications for session starting and ending',
                              color: Color(0xff606060),
                              size: 15,
                              weight: FontWeight.w400,

                          ),
                        ),
                        Switch(
                          value: switchValue4,
                          onChanged: (value) {
                            setState(() {
                              switchValue4 = value;
                            });
                          },
                          activeColor: Colors.green,
                          inactiveTrackColor: Colors.grey,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 210.h,
                          child:  const Helvetica(
                            text:
                            'Notifications from updates',
                              color: Color(0xff606060),
                              size: 15,
                              weight: FontWeight.w400,

                          ),
                        ),
                        Switch(
                          value: switchValue5,
                          onChanged: (value) {
                            setState(() {
                              switchValue5 = value;
                            });
                          },
                          activeColor: Colors.green,
                          inactiveTrackColor: Colors.grey,
                        ),
                      ],
                    ),
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
                height: 20.h,
              ),
              Container(
                width: 378.w,
                padding: EdgeInsets.only(left: 21.w, right: 20.w,bottom: 47.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Helvetica(
                      text:'Terms & Conditions',
                        color: Color(0xff000000),
                        size: 20,
                        weight: FontWeight.w400,

                    ),
                    InkWell(
                      onTap: () {
                      },
                      child:IconButton(
                        icon: SvgPicture.asset(
                          'assets/arrow.svg', // Replace with your SVG file path
                          width: 24.h,
                          height: 24.h,
                        ),
                        onPressed: () {
                          // Handle button press
                        },
                      ),
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