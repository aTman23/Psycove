import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Fonts/helveticaFont.dart';

class TextfieldContainer extends StatefulWidget {
  final String Title;
  final String hinttitle;
  const TextfieldContainer({super.key, required this.Title, required this.hinttitle});

  @override
  State<TextfieldContainer> createState() => _TextfieldContainerState();
}

class _TextfieldContainerState extends State<TextfieldContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
              Helvetica(
               text:widget.Title,

                  color: const Color(0xff606060),
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
                    hintText: widget.hinttitle,
                    hintStyle: const TextStyle(
                      fontFamily: "Helvetica",
                        fontSize: 17.0, // Set the desired font size
                        fontWeight: FontWeight.normal // Set the desired font weight
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                      borderSide: const BorderSide(
                        color:  Color(0xff8ADCFF), // Regular border color
                        width: 5.0, // Regular border thickness
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

      ],

    );
  }
}

class PasswordTextField extends StatefulWidget {
  final String text1;
  final String hinttext1;
  const PasswordTextField({super.key, required this.text1, required this.hinttext1});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(left: 10.h),
          child: Helvetica(
            text:widget.text1,

              color: const Color(0xff606060),
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
              contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
              hintText: widget.hinttext1,
              hintStyle: const TextStyle(
                fontFamily: "Helvetica",
                  fontSize: 17.0, // Set the desired font size
                  fontWeight: FontWeight.normal // Set the desired font weight
              ),
              // Customize label color
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
                borderSide: const BorderSide(
                  color:  Color(0xff8ADCFF), // Regular border color
                  width: 5.0, // Regular border thickness
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

