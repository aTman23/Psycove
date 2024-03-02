import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../Fonts/helveticaFont.dart';
import '../models/models.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({super.key});

  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  final TextEditingController _messageController = TextEditingController();
  final List<Message> _messages = [];

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
            const CircleAvatar(
              // User photo
              backgroundImage: AssetImage('assets/images/image1.png'),
            ),
            const SizedBox(width: 10.0),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Helvetica(text:'Username',
                    size: 18.0), // User name
                Helvetica(text:'Active',
                    size: 12.0), // User status
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
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                Message message = _messages[index];
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: message.isUser
                        ? MainAxisAlignment.end
                        : MainAxisAlignment.start,
                    children: [
                      message.isUser
                          ? const SizedBox()
                          : const CircleAvatar(
                        // Sender's photo
                        backgroundImage:
                        AssetImage('assets/images/image1.png'),
                      ),
                      const SizedBox(width: 8.0),
                      Container(
                        constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.75),
                        child: Column(
                          crossAxisAlignment: message.isUser
                              ? CrossAxisAlignment.end
                              : CrossAxisAlignment.start,
                          children: [
                            ClipPath(
                              clipper: message.isUser
                                  ? LowerNipMessageClipper(MessageType.send)
                                  : UpperNipMessageClipper(MessageType.receive),
                              child: Container(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 24, top: 12, bottom: 16),
                                decoration: BoxDecoration(
                                  color: message.isUser
                                      ? const Color(0xffD3A3F1)
                                      : const Color(0xffD3A3F1)
                                      .withOpacity(0.20),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Helvetica(
                                  text:message.text,

                                      size: 17,
                                      weight: FontWeight.normal),

                              ),
                            ),
                            const SizedBox(height: 4.0),
                            Row(
                              mainAxisAlignment: message.isUser
                                  ? MainAxisAlignment.end
                                  : MainAxisAlignment.start,
                              children: [
                                Helvetica(
                                  text:'${message.time.hour}:${message.time.minute}', // Message timestamp
                                  size: 12.0),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.w),
            child: const Divider(
              color: Color(0xffEEEEEE), // Customize the color of the line
              thickness: 1.0, // Customize the thickness of the line
            ),
          ),
        ],
      ),
      bottomSheet: _buildMessageInput(),
    );
  }

  Widget _buildMessageInput() {
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
                style: const TextStyle(
                  fontFamily: "Helvetica",
                    fontSize: 15, fontWeight: FontWeight.normal),
                controller: _messageController,
                decoration: InputDecoration(
                  fillColor: const Color(0xffF3F6F6),
                  contentPadding: const EdgeInsets.all(10),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () {
                      _sendMessage();
                    },
                  ),
                  hintText: 'Type a message...',
                  hintStyle: const TextStyle(
                    fontFamily: "Helvetica",
                      fontSize: 14, color: Color(0xff797C7B)),
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

  void _sendMessage() {
    String text = _messageController.text;
    if (text.isNotEmpty) {
      setState(() {
        _messages.add(Message(text: text, time: DateTime.now(), isUser: true));
        _messageController.clear();
        Future.delayed(const Duration(seconds: 2), () {
          setState(() {
            _messages.add(Message(
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