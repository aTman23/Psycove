import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Fonts/helveticaFont.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
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
              'Personal Profile',
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
        padding: EdgeInsets.only(left: 12.w, right: 10.w, top: 12.h,bottom: 75.h),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Helvetica(text:
                    'Your Name',
                        color: Color(0xff606060),
                        size: 18,
                        weight: FontWeight.normal

                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 40.h,
                    width: 300.w,
                    padding: EdgeInsets.only(left: 15.w,),
                    child: TextField(
                      style: const TextStyle(
                        fontFamily: "Helvetica",
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                        hintText: 'Name',
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
                    height: 15.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Helvetica(text:
                        'Gender',
                            color: Color(0xff606060),
                            size: 20,
                            weight: FontWeight.normal

                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 40.h,
                        width: 300.w,
                        padding: EdgeInsets.only(left: 15.w,),
                        child: FormBuilderDropdown(
                          style: const TextStyle(
                            fontFamily: "Helvetica",
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.black
                          ),
                          name: 'gender',
                          decoration: InputDecoration(
                            hintText: "Select Gender",
                            hintStyle:const TextStyle(
                              fontFamily: "Helvetica",
                                fontSize: 17.0, // Set the desired font size
                                fontWeight: FontWeight.normal // Set the desired font weight
                            ),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Color(0xffD3A3F1),width: 5),
                              borderRadius: BorderRadius.circular(6.0),
                              // Set rounded corners
                            ),
                          ),
                          items: ['Male', 'Female', 'Other'].map((gender) => DropdownMenuItem(
                            value: gender,
                            child: Helvetica(text: gender,
                              size: 17,

                            ),
                          ),).toList(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Helvetica(text:
                        'Profession',
                            color: Color(0xff606060),
                            size: 18,
                            weight: FontWeight.normal

                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 40.h,
                        width: 300.w,
                        padding: EdgeInsets.only(left: 15.w,),
                        child: TextField(
                          style: GoogleFonts.inder(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                            hintText: ('exp: Student'),
                            hintStyle:const TextStyle(fontFamily: "Helvetica",
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
                  SizedBox(
                    height: 15.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Helvetica(text:
                        'Language Spoken',
                            color: Color(0xff606060),
                            size: 18,
                            weight: FontWeight.normal

                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Container(
                        height: 40.h,
                        width: 300.w,
                        padding: EdgeInsets.only(left: 15.w,),
                        child: TextField(
                          style: const TextStyle(
                            fontFamily: "Helvetica",
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                            hintText: ('exp: Hindi and English'),
                            hintStyle: const TextStyle(
                              fontFamily: "Helvetica",
                                fontSize: 17.0, // Set the desired font size
                                fontWeight: FontWeight.normal // Set the desired font weight
                            ), // Customize label color
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
                  SizedBox(
                    height: 15.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Helvetica(text:
                        'Date of Birth',
                            color: Color(0xff606060),
                            size: 18,
                            weight: FontWeight.normal
                        ),

                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 40.h,
                        width: 300.w,
                        padding: EdgeInsets.only(left: 15.w,),
                        child: FormBuilderDateTimePicker(
                          name: 'dob',
                          style: const TextStyle(
                            fontFamily: "Helvetica",
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                          inputType: InputType.date,
                          decoration: InputDecoration(

                            hintText: "Select Date of Birth",
                            hintStyle: const TextStyle(
                              fontFamily: "Helvetica",
                                fontSize: 17.0, // Set the desired font size
                                fontWeight: FontWeight.normal // Set the desired font weight
                            ),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xffD3A3F1), // Regular border color
                                width: 5.0, // Regular border thickness
                              ),
                              borderRadius: BorderRadius.circular(6.0),
                              // Set rounded corners
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Helvetica(text:
                        'Bio Data',
                            color: Color(0xff606060),
                            size: 18,
                            weight: FontWeight.normal

                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 40.h,
                        width: 300.w,
                        padding: EdgeInsets.only(left: 15.w,),
                        child: TextField(
                          style: const TextStyle(
                            fontFamily: "Helvetica",
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                            hintStyle: const TextStyle(
                              fontFamily: "Helvetica",
                                fontSize: 17.0, // Set the desired font size
                                fontWeight: FontWeight.normal // Set the desired font weight
                            ), // Customize label color
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
                  SizedBox(
                    height: 15.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Helvetica(text:
                        'Location',
                            color: Color(0xff606060),
                            size: 18,
                            weight: FontWeight.normal

                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 40.h,
                        width: 300.w,
                        padding: EdgeInsets.only(left: 15.w,),
                        child: TextField(
                          style: const TextStyle(
                            fontFamily: "Helvetica",
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                            hintStyle: const TextStyle(
                              fontFamily: "Helvetica",
                                fontSize: 17.0, // Set the desired font size
                                fontWeight: FontWeight
                                    .normal // Set the desired font weight
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
                child:  const Helvetica(
                  text:
                  'Update Profile',
                    color: Colors.black,
                    size: 16,
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