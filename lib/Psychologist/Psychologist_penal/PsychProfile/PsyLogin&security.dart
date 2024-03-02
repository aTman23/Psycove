import 'package:atman/Psychologist/Psychologist_penal/PsychProfile/Component/textfielsContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Fonts/helveticaFont.dart';


class PsyLoginSecurity extends StatefulWidget {
  const PsyLoginSecurity({super.key});

  @override
  State<PsyLoginSecurity> createState() => _PsyLoginSecurityState();
}

class _PsyLoginSecurityState extends State<PsyLoginSecurity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff8ADCFF),
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
              text:'Login & Security',

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
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PasswordTextField(
                  text1: 'Old Password',
                  hinttext1: 'Enter your old password'),
              SizedBox(
                height: 14.h,
              ),
              const PasswordTextField(
                  text1: 'New Password',
                  hinttext1: 'Enter your new password'),
              SizedBox(
                height: 14.h,
              ),
              const PasswordTextField(
                  text1: 'Re-enter new Password',
                  hinttext1: 'Re-enter your new password'),
            ],
          ) ,
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
                  backgroundColor: const Color(0xff8ADCFF), // Text color
                  elevation: 2, // Elevation
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // BorderRadius
                  ),
                ),
                onPressed: () {},
                child: const Helvetica(
                  text:'Set new Password',

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
