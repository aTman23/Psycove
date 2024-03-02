import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../models/models.dart';
import 'appoinment_screen.dart';
import 'chat_room.dart';

class PsychologistProfile extends StatefulWidget {
  PsychologistProfile(this.profile, {super.key});

  @override
  State<PsychologistProfile> createState() => _PsychologistProfileState();
  PsychologyProfile profile;
}

class _PsychologistProfileState extends State<PsychologistProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color(0xffF4F4F4),
          ),
          Container(
              height: 170.h,
              decoration: const ShapeDecoration(
                color: Color(0xffD3A3F1),
                shape: RoundedRectangleBorder(),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                      SizedBox(
                        width: 65.w,
                      ),
                      const Spacer()
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              )),
          Positioned(
            top: 100.h,
            right: 12.w,
            left: 12.w,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30,
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: const Color(0xffD3A3F1), // Text color
                        elevation: 2,
                        shadowColor: const Color(0xff803a9f), // Elevation
                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(10), // BorderRadius
                        ),
                      ),
                      onPressed: () {},
                      child: const Icon(
                        Icons.video_call_rounded,
                        size: 20,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 180.h,
                    width: 126.w,
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey, // Specify the border color
                              width: 2.0, // Specify the border width
                            ),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Image.asset(
                            'assets/images/${widget.profile.Image}.png',
                            height: 150,
                            width: 150.w,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                            alignment: Alignment.center,
                            width: 170.w,
                            child: Helvetica(
                              text:widget.profile.name,
                              alignment: TextAlign.center,

                              size: 20,
                               weight: FontWeight.w500,
                                  color: const Color(0xff000000)),
                            )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 30,
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: const Color(0xffD3A3F1), // Text color
                        elevation: 2,
                        shadowColor: const Color(0xff803a9f), // Elevation
                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(10), // BorderRadius
                        ),
                      ),
                      onPressed: () {},
                      child: const Icon(
                        Icons.add_ic_call_rounded,
                        size: 20,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 290.h,
            left: 12.w,
            right: 12.w,
            bottom: 42.h,
            child: Container(
              margin: const EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.only(left: 12.w, right: 12.w, bottom: 12.h),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Helvetica(
                          text:"About",

                              size: 18,
                              weight: FontWeight.w500,
                              color: Color(0xff000000)),

                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: const Color(0xffD3A3F1),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.h),
                          child: Helvetica(
                              text:widget.profile.about,
                              alignment: TextAlign.justify,

                              size: 14,
                               weight: FontWeight.normal,
                                  color: const Color(0xff000000))),

                      ],
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Helvetica(
                          text:"Qualification",
                          size: 18,
                           weight: FontWeight.w500,
                              color: Color(0xff000000)),

                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          width: 338.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: const Color(0xffD3A3F1),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.h),
                          height: 59.h,
                          child: Helvetica(
                            text:widget.profile.qualification,
                            alignment: TextAlign.center,
                            size: 14,
                             weight: FontWeight.normal,
                                color: const Color(0xff000000)),

                        )
                      ],
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Helvetica(
                          text:"Language Spoken",
                          size: 18,
                           weight: FontWeight.w500,
                             color: Color(0xff000000)),

                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: const Color(0xffD3A3F1),
                          ),
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.h),
                          height: 36.h,
                          width: 338.w,
                          child: Helvetica(
                            text:widget.profile.languagespoken,
                            alignment: TextAlign.center,
                            size: 14,
                             weight: FontWeight.normal,
                                color: const Color(0xff000000)),

                        )
                      ],
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Helvetica(
                          text:"Contact Details",
                          size: 18,
                           weight: FontWeight.w500,
                              color: Color(0xff000000)),

                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: const Color(0xffD3A3F1),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.h),
                          height: 36.h,
                          width: 338.w,
                          child: Helvetica(text:
                            widget.profile.contectdetail,
                            alignment: TextAlign.center,

                            size: 14,
                             weight: FontWeight.normal,
                                color: const Color(0xff000000)),

                        )
                      ],
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Helvetica(
                          text:"Years of Experience & Field",
                          size: 18,
                           weight: FontWeight.w500,
                              color: Color(0xff000000)),

                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: const Color(0xffD3A3F1),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.h),
                          height: 36.h,
                          width: 338.w,
                          child: Helvetica(
                            text:"${widget.profile.Experiance}, ${widget.profile.field}",
                            size: 14,
                             weight: FontWeight.normal,
                                color: const Color(0xff000000)),

                        )
                      ],
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Helvetica(
                          text:"Deals With issues like",
                          size: 18,
                            weight: FontWeight.w500,
                              color: Color(0xff000000)),

                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: const Color(0xffD3A3F1),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.h),
                          height: 36.h,
                          width: 338.w,
                          child: Helvetica(
                            text:widget.profile.deals,
                            alignment: TextAlign.center,
                            size: 14,
                             weight: FontWeight.normal,
                                color: const Color(0xff000000)),

                        )
                      ],
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Helvetica(
                          text:"License",
                          size: 18,
                           weight: FontWeight.w500,
                              color: Color(0xff000000)),

                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: const Color(0xffD3A3F1),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.h),
                          height: 36.h,
                          width: 338.w,
                          child: Helvetica(
                            text:widget.profile.licence,
                            alignment: TextAlign.center,
                            size: 14,
                             weight: FontWeight.normal,
                                color: const Color(0xff000000)),

                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomSheet: Container(
        margin: const EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        width: double.infinity,
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
                      backgroundColor: const Color(0xffD3A3F1), // Text color
                      elevation: 2,
                      shadowColor: const Color(0xff803a9f), // Elevation
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // BorderRadius
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChatRoom()),
                      );
                    },
                    child: const Helvetica(
                      text:'Chat',

                      color: Colors.black,
                      size: 12,
                       weight: FontWeight.w600,

                    ),
                  ),
                ),
                SizedBox(
                  width: 24.w,
                ),
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: const Color(0xffD3A3F1), // Text color
                      elevation: 2,
                      shadowColor: const Color(0xff803a9f), // Elevation
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // BorderRadius
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyAppoinment(
                              Details: widget.profile,
                            )),
                      );
                    },
                    child: const Helvetica(
                      text:'Book a session',
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