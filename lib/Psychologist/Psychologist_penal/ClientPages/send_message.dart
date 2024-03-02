import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../DialogBoxes/messageSuccesssDialog.dart';

class SendMessage extends StatefulWidget {
  const SendMessage({super.key});
  @override
  State<SendMessage> createState() => _SendMessageState();
}
class _SendMessageState extends State<SendMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff8ADCFF),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200),
          child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              height: 150.h,
              decoration: const BoxDecoration(
                color: Color(0xff8ADCFF),),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: SvgPicture.asset(
                          'assets/chatBox_icon/back.svg',
                          width: 24.h,
                          height: 24.h,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                          // Handle button press
                        },
                      ),
                      const Spacer(),
                      const Helvetica(text: 'Send Message', size: 24, weight: FontWeight.w500),
                      const Spacer(),
                      const SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Helvetica(text: 'Write a Message', size: 20, weight: FontWeight.w500),
                  ),
                  const Spacer(),
                ],
              ),),),
      body: Container(
        padding: EdgeInsets.all(12),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30))),
        child: Column(
          children: [
            const Expanded(
              child: TextField(
                style: TextStyle(fontFamily: 'Helvetica', fontSize: 17, fontWeight: FontWeight.w500),
                textAlignVertical: TextAlignVertical.top,
                expands: true,
                maxLines: null,
                minLines: null,
                decoration: InputDecoration(
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  hintStyle: TextStyle(fontFamily: 'Helvetica', fontSize: 17, fontWeight: FontWeight.normal),
                  border: InputBorder.none,
                  hintText: 'Write here...',
                ),

              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 300.w,
                height:40.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: const Color(0xff8ADCFF), // Text color
                    elevation: 5, // Elevation
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // BorderRadius
                    ),
                  ),
                  onPressed: () {
                    MessagessSuccessDialog(context);
                  },
                  child: const Helvetica(text: 'Send Message',color: Colors.black,size: 16,weight: FontWeight.normal,),
                ),
              ),
            ),
          ],
        ),

      ),

    );
  }
}