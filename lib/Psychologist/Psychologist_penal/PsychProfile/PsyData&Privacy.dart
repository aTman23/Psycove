import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PsyDataPrivacy extends StatefulWidget {
  const PsyDataPrivacy({super.key});

  @override
  State<PsyDataPrivacy> createState() => _PsyDataPrivacyState();
}

class _PsyDataPrivacyState extends State<PsyDataPrivacy> {
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
              text:'Data & Privacy',

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
            onTap: (){},
            child: Container(
              margin: EdgeInsets.only(left: 12.w,right: 12.w),
              height: 67.h,
              width: 353.w,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.black,width: 2)
              ),
              child: const Center(
                child: Helvetica(text:
                  'How we protect your data',

                      color: Color(0xff606060),
                      size: 20,
                      weight: FontWeight.normal

                ),
              ),
            ),
          ),
            SizedBox(
              height: 15.h,
            ),
            InkWell(
              onTap: (){},
              child: Container(
                padding: const EdgeInsets.all(8),
                margin: EdgeInsets.only(left: 12.w,right: 12.w),
                height: 67.h,
                width: 353.w,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.black,width: 2)
                ),
                child: const Center(
                  child: Helvetica(
                    text:
                    'When will you get payment from us ?',

                        color: Color(0xff606060),
                        size: 20,
                        weight: FontWeight.normal

                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
