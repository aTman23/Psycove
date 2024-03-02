import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../Fonts/helveticaFont.dart';

class CopingTechs01 extends StatefulWidget {
  const CopingTechs01({super.key});

  @override
  State<CopingTechs01> createState() => _CopingTechs01State();
}

class _CopingTechs01State extends State<CopingTechs01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      appBar: AppBar(
        backgroundColor: const Color(0xffF4F4F4),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              icon: SvgPicture.asset(
                'assets/chatBox_icon/back.svg', // Replace with your SVG file path
                width: 24,
                height: 24,
              ),
              onPressed: () {
                Navigator.of(context).pop();
                // Handle button press
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
              top: 0.h,
              right: 0.w,
              child: SvgPicture.asset('assets/self_test_img/topback.svg')),
          Positioned(
              top: 50.h,
              left: 10.w,
              right: 10.w,
              child: Image.asset('assets/Coping_icons/main_image.png')),
          Positioned(
            top: 360.h,
            left: 12.w,
            right: 12.w,
            bottom: 50.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Helvetica(text:"Coping Technique",
                    size: 24,
                    color: Color(0xffD3A3F1),
                    weight: FontWeight.w600
                ),
                SizedBox(height: 12.h,),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child:  const Helvetica(text:"Whether you're facing stress, anxiety, or just looking for ways to enhance your overall well-being, you're in the right place.",
                        alignment: TextAlign.center,
                        size: 18,
                         weight: FontWeight.w500,
                        )),
                const Spacer(),
                SizedBox(
                  width: 295.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: const Color(0xffD3A3F1), // Text color
                      elevation: 2, // Elevation
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // BorderRadius
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/copinglist');

                    },
                    child: const Helvetica(
                      text:'Next',

                          color: Colors.white,
                          size: 17,
                          weight: FontWeight.normal
                      ),
                    ),
                  ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}