import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Noti_model/PsyNotifModel.dart';

class PsyNotifDetails extends StatelessWidget {
  final PsyNotificationItem psynotification;
  final VoidCallback onNotificationOpened;
  const PsyNotifDetails({super.key, required this.psynotification, required this.onNotificationOpened});

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
            Helvetica(
              text:psynotification.title,
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
              text:'Message: ${psynotification.message}',
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
