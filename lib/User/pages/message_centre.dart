import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'dialogs/msdialog.dart';

class MessageCentre extends StatefulWidget {
  const MessageCentre({super.key});

  @override
  State<MessageCentre> createState() => _MessageCentreState();
}

class _MessageCentreState extends State<MessageCentre> {
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
              'Message Centre',
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
      body:  Container(
        padding: EdgeInsets.only(left: 10.w, top: 40.h, right: 10.w,bottom: 20.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 20.w),
              child:  const Helvetica(text:
                'Send a message',
                    color: Color(0xff606060),
                    size: 20,
                    weight: FontWeight.normal

              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 148.h,
              width: 300.w,
              margin:EdgeInsets.only(left: 40.w,right: 12),
              child: TextField(
                style: const TextStyle(
                  fontFamily: "Helvetica",
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: null, // Set to null for an unlimited number of lines
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(12),
                  hintText: 'Write here....',
                  hintStyle: const TextStyle(
                    fontFamily: "Helvetica",
                      fontSize: 17.0, // Set the desired font size
                      fontWeight: FontWeight.normal // Set the desired font weight
                  ), // Customize label color
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                        6.0), // Set rounded corners
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Colors
                            .blue), // Customize border color when focused
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 14.h,
            ),
          ],
        ),),
      bottomSheet: SizedBox(
        width: double.maxFinite,
        height: 50.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300.w,
              height:40.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: const Color(0xffD3A3F1), // Text color
                  elevation: 5, // Elevation
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // BorderRadius
                  ),
                ),
                onPressed: () {
                  MessageDialog(context);
                },
                child: const Helvetica(
                  text:'Send',
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