import 'package:atman/Fonts/helveticaFont.dart';
import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Chat_psy_model/Psy_ChatModel.dart';

class PsyChatRoom extends StatefulWidget {
  const PsyChatRoom({
    super.key,
  });

  @override
  State<PsyChatRoom> createState() => _PsyChatRoomState();
}

class _PsyChatRoomState extends State<PsyChatRoom> {
  final TextEditingController _psymessageController = TextEditingController();
  final List<PsyMessage> _psymessages = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      appBar: AppBar(
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
            const SizedBox(width: 5.0),
            const Stack(
              children: [
                CircleAvatar(
                  // User photo
                  backgroundImage: AssetImage('assets/images/image1.png'),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.green,
                  ),
                )
              ],
            ),
            const SizedBox(width: 10.0),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Helvetica(text: 'Username', size: 18, weight: FontWeight.w400),
                Helvetica(text: 'Active', size: 12, weight: FontWeight.w400),

              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/chatBox_icon/Call.svg', // Replace with your SVG file path
              width: 24,
              height: 24,
            ),
            onPressed: () {
              // Handle button press
            },
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/chatBox_icon/Video.svg', // Replace with your SVG file path
              width: 24,
              height: 24,
            ),
            onPressed: () {
              // Handle button press
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: _psymessages.length,
                itemBuilder: (context, index) {
                  PsyMessage psymessage = _psymessages[index];
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: psymessage.isUser
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.start,
                      children: [
                        psymessage.isUser
                            ? const SizedBox()
                            : const CircleAvatar(
                          // Sender's photo
                          backgroundImage:
                          AssetImage('assets/images/image1.png'),
                        ),
                        const SizedBox(width: 8.0),
                        Container(
                          constraints: BoxConstraints(
                              maxWidth:
                              MediaQuery.of(context).size.width * 0.75),
                          child: Column(
                            crossAxisAlignment: psymessage.isUser
                                ? CrossAxisAlignment.end
                                : CrossAxisAlignment.start,
                            children: [
                              ClipPath(
                                clipper: psymessage.isUser
                                    ? LowerNipMessageClipper(MessageType.send)
                                    : UpperNipMessageClipper(
                                    MessageType.receive),
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      left: 16, right: 24, top: 12, bottom: 16),
                                  decoration: BoxDecoration(
                                    color: psymessage.isUser
                                        ? const Color(0xff8ADCFF)
                                        : const Color(0xff8ADCFF)
                                        .withOpacity(0.20),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),

                                  child: Helvetica(text: psymessage.text,size: 17,weight: FontWeight.normal,),
                                ),
                              ),
                              const SizedBox(height: 4.0),
                              Row(
                                mainAxisAlignment: psymessage.isUser
                                    ? MainAxisAlignment.end
                                    : MainAxisAlignment.start,
                                children: [
                                  Helvetica(text: '${psymessage.time.hour}:${psymessage.time.minute}', size: 12, weight: FontWeight.w400),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.w),
            child: const Divider(
              color: Color(0xffEEEEEE),
              thickness: 1.0,
            ),
          ),
        ],
      ),
      bottomSheet: _buildPsyMessageInput(),
    );
  }

  Widget _buildPsyMessageInput() {
    return Container(
      height: 70.h,
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
      child: Row(
        children: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/chatBox_icon/Attachment.svg', // Replace with your SVG file path
              width: 24.w,
              height: 24.h,
            ),
            onPressed: () {
              // Handle button press
            },
          ),
          Expanded(
            child: SizedBox(
              height: 40.h,
              child: TextField(
                style: GoogleFonts.inter(
                    fontSize: 15, fontWeight: FontWeight.normal),
                controller: _psymessageController,
                decoration: InputDecoration(
                  fillColor: const Color(0xffF3F6F6),
                  contentPadding: const EdgeInsets.all(10),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () {
                      _psysendMessage();
                    },
                  ),
                  hintText: 'Type a message...',
                  hintStyle: GoogleFonts.inder(
                      fontSize: 14, color: const Color(0xff797C7B)),
                  border: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Color(0xffFFFFFF), width: 0.0),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/chatBox_icon/camera 01.svg', // Replace with your SVG file path
              width: 24.w,
              height: 24.h,
            ),
            onPressed: () {
              // Handle button press
            },
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/chatBox_icon/microphone.svg', // Replace with your SVG file path
              width: 24.w,
              height: 24.h,
            ),
            onPressed: () {
              // Handle button press
            },
          ),
        ],
      ),
    );
  }

  void _psysendMessage() {
    String text = _psymessageController.text;
    if (text.isNotEmpty) {
      setState(() {
        _psymessages
            .add(PsyMessage(text: text, time: DateTime.now(), isUser: true));
        _psymessageController.clear();
        Future.delayed(const Duration(seconds: 2), () {
          setState(() {
            _psymessages.add(PsyMessage(
              text: 'hello how are you',
              time: DateTime.now(),
              isUser: false,
            ));
          });
        });
      });
    }
  }
}