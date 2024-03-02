import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LoginSecurity extends StatefulWidget {
  const LoginSecurity({super.key});
  @override
  State<LoginSecurity> createState() => _LoginSecurityState();
}

class _LoginSecurityState extends State<LoginSecurity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
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
            const Helvetica(text:
              'Login & Security',
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
        padding: EdgeInsets.only(
            left: 12.w, right: 10.w, top: 38.h, bottom: 100.h),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10.h),
                    child: const Helvetica(text:
                      'Old Password',
                        color: Color(0xff606060),
                        size: 18,
                        weight: FontWeight.w400,

                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 40.h,
                    width: 300.w,
                    padding: EdgeInsets.only(
                      left: 30.w,
                    ),
                    child: TextField(
                      style: const TextStyle(
                        fontFamily: "Helvetica",
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                        hintText: 'Enter your old password',
                        hintStyle: const TextStyle(
                          fontFamily: "Helvetica",
                            fontSize: 17.0, // Set the desired font size
                            fontWeight: FontWeight.normal // Set the desired font weight
                        ),
                        // Customize label color
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
                    height: 14.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          left: 10.w,
                        ),
                        child: const Helvetica(text:
                          'New Password',
                            color: Color(0xff606060),
                            size: 18,
                            weight: FontWeight.w400,

                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 40.h,
                        width: 300.w,
                        padding: EdgeInsets.only(
                          left: 30.w,
                        ),
                        child: TextField(
                          style: const TextStyle(
                            fontFamily: "Helvetica",
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                            hintText: ('Enter your new password'),
                            hintStyle: const TextStyle(
                              fontFamily: "Helvetica",
                                fontSize: 17.0, // Set the desired font size
                                fontWeight: FontWeight.normal // Set the desired font weight
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6.0),
                              borderSide: const BorderSide(
                                color: Color(
                                    0xffD3A3F1), // Regular border color
                                width: 5.0, // Regular border thickness
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          left: 10.w,
                        ),
                        child: const Helvetica(text:
                          'Re-enter new Password',
                            color: Color(0xff606060),
                            size: 18,
                            weight: FontWeight.w400,

                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 40.h,
                        width: 300.w,
                        padding: EdgeInsets.only(
                          left: 30.w,
                        ),
                        child: TextField(
                          style: const TextStyle(
                            fontFamily: "Helvetica",
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                            hintText: ('Re-enter your new password'),
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
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomSheet: SizedBox(
        width: double.maxFinite,
        height: 50.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: const Color(0xffD3A3F1), // Text color
                  elevation: 2, // Elevation
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // BorderRadius
                  ),
                ),
                onPressed: () {},
                child: const Helvetica(
                  text:
                  'Set new Password',
                    color: Colors.black,
                    size: 17,
                    weight: FontWeight.normal,

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}