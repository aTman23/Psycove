import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../Fonts/helveticaFont.dart';
import 'notification_model/mofication_model.dart';

class NotificationDetailPage extends StatelessWidget {
  final NotificationItem notification;
  final VoidCallback onNotificationOpened;

  const NotificationDetailPage({super.key,
    required this.notification,
    required this.onNotificationOpened,
  });

  @override
  Widget build(BuildContext context) {
    onNotificationOpened();
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
            Helvetica(text:notification.title,
              maxlines: 1,
              overflow: TextOverflow.ellipsis,

                  size: 20,
                  weight: FontWeight.w700,
                  color: const Color(0xff000000)
              ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Helvetica(
              text:'Message: ${notification.message}',
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}