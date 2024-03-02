import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ChatPage/psyChat_room.dart';
import 'DetailsComponents/DetailsContainer.dart';

class PersonDetails extends StatefulWidget {
  const PersonDetails({super.key});

  @override
  State<PersonDetails> createState() => _PersonDetailsState();
}

class _PersonDetailsState extends State<PersonDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color:const Color(0xffF4F4F4),
          ),
          Container(
              height: 170.h,
              decoration: ShapeDecoration(
                color:  const Color(0xff8ADCFF),
                shape: const RoundedRectangleBorder(
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        child: IconButton(
                          icon: SvgPicture.asset(
                            'assets/backA.svg', // Replace with your SVG file path
                            width: 24,
                            height: 24,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                            // Handle button press
                          },
                        ),
                      ),
                      SizedBox(
                        height: 27.h,
                        child: const Helvetica(
                          text:'Profile',
                          size: 24,
                           weight: FontWeight.bold,
                            color: Color(0xffFFFFFF),
                          ),

                      ),
                      SizedBox(width: 65.w,),
                      const Spacer()
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              )
          ),
          Positioned(
            top: 100.h,
            right: 12.w,
            left: 12.w,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: SizedBox(
                height: 180.h,
                width: 126.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,  // Specify the border color
                          width: 2.0,           // Specify the border width
                        ),
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: Image.asset('assets/images/image1.png',
                        height: 150,
                        width: 150.w,
                        fit: BoxFit.cover,),
                    ),
                    Container(
                        alignment: Alignment.center,
                        width: 170.w,
                        child: const Helvetica(text: "Ramesh chandra Rav",
                          alignment: TextAlign.center,
                          size: 18,
                           weight: FontWeight.w600,
                             color: Color(0xff000000),),),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: 290.h,
              left: 12.w,
              right: 12.w,
              bottom: 32.h,
              child: Container(
                margin: const EdgeInsets.only(bottom: 20,),
                padding: EdgeInsets.only(left: 12.w,right: 12.w,bottom: 12.h),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const DetailedContainer(
                          titles: 'Gender',
                          Details: "Male"),
                      SizedBox(
                        height: 18.h,
                      ),
                      const DetailedContainer(
                          titles: "Age",
                          Details: "22"),
                      SizedBox(
                        height: 18.h,
                      ),
                      const DetailedContainer(
                          titles: "Occupation",
                          Details: "Student"),
                      SizedBox(
                        height: 18.h,
                      ),
                      const DetailedContainer(
                          titles: "Relationship Status",
                          Details: "Single"),
                      SizedBox(
                        height: 18.h,
                      ),
                      const DetailedContainer(
                          titles: "Language spoken",
                          Details: "Hindi"),
                      SizedBox(
                        height: 18.h,
                      ),
                      const DetailedContainer(
                          titles: "Contact Details",
                          Details: "Samar@gmail.com"),
                    ],
                  ),
              )
              ),),
        ],
      ),
      bottomSheet: Container(
        margin: const EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        height: 50,
        decoration: const BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0), // Radius for the top-left corner
            topRight:
            Radius.circular(16.0), // Radius for the bottom-right corner
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: const Color(0xff8ADCFF), // Text color
                      elevation: 2,
                      shadowColor: const Color(0xff8ADCFF),// Elevation
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // BorderRadius
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PsyChatRoom()),
                      );
                    },
                    child:  const Helvetica(
                      text:'Chat',
                       color: Colors.black,
                      size: 12,
                     weight: FontWeight.w600,
                      ),
                    ),

                ),
                SizedBox(width: 24.w,),
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: const Color(0xff8ADCFF), // Text color
                      elevation: 6,
                      shadowColor: const Color(0xff8ADCFF),// Elevation
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // BorderRadius
                      ),
                    ),
                    onPressed: () {

                    },
                    child:  Helvetica(
                      text:'History',
                        color: Colors.black,
                      size: 12,
                        weight: FontWeight.w600,

                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}

