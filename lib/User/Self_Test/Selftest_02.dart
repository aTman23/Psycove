import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../Fonts/helveticaFont.dart';
import 'Quition&Answer/quistion_page.dart';


class SelfTest02 extends StatefulWidget {
  const SelfTest02({super.key});

  @override
  State<SelfTest02> createState() => _SelfTest02State();
}

class _SelfTest02State extends State<SelfTest02> {
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
              top: 70.h,
              left: 20.w,
              right: 20.w,
              child: SvgPicture.asset('assets/self_test_img/selfheart.svg')),
          Positioned(
            top: 360.h,
            left: 12.w,
            right: 12.w,
            bottom: 50.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Helvetica(text:"Self Test",size: 25,
                    color:Color(0xffD3A3F1),
                    weight: FontWeight.w600
                ),
                SizedBox(height: 12.h,),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child:  const Helvetica(text:"This self-test is designed to provide you with insights into various aspects of your mental and emotional well-being",
                        alignment: TextAlign.center,
                        size: 19,
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
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const QuistionPage()),
                      );
                    },
                    child: const Helvetica(
                      text:'Start',
                          color: Colors.black,
                          size: 16,
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