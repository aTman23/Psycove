import 'package:atman/Fonts/helveticaFont.dart';
import 'package:atman/Psychologist/Psychologist_penal/Notification/psyNotif%20Details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'Components/Notification_box.dart';
import 'Noti_model/PsyNotifModel.dart';

class PsyNotification extends StatefulWidget {
  const PsyNotification({super.key});
  @override
  State<PsyNotification> createState() => _PsyNotificationState();
}
class _PsyNotificationState extends State<PsyNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      appBar: AppBar(
        backgroundColor: const Color(0xffF4F4F4),
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
            const Helvetica(text:"Notification",
                size: 25,
                weight: FontWeight.w700,
                color: Color(0xff000000)
            ),
            const Spacer(),
            InkWell(
              onTap: (){
                setState(() {
                  psynotifications.clear();
                });
              },
              child: const Helvetica(text:"Clear All",
                  size: 13,
                  weight: FontWeight.w500,
                  color: Color(0xff8ADCFF)
              ),
            )
          ],
        ),
      ),
      body:  psynotifications.isEmpty
          ?  const Center(child: Helvetica(text:'No notifications',
        size: 16, weight: FontWeight.normal,
      )): ListView.builder(
        itemCount: psynotifications.length,
        itemBuilder: (context, index) {
          if (index == 0 || psynotifications[index].date != psynotifications[index - 1].date) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    psynotifications[index].date,
                    style: const TextStyle(
                        fontFamily: "Helvetica",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff797C7B)),
                  ),
                ),
                PsyNotificationTile(psynotification: psynotifications[index], ),
              ],
            );
          }
          // Display notification item
          return PsyNotificationTile(psynotification: psynotifications[index]);
        },
      ),

    );
  }
}
class PsyNotificationTile extends StatefulWidget {
  final PsyNotificationItem psynotification;
  const PsyNotificationTile({super.key, required this.psynotification});

  @override
  State<PsyNotificationTile> createState() => _PsyNotificationTileState();
}

class _PsyNotificationTileState extends State<PsyNotificationTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.psynotification.opened=true;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PsyNotifDetails(
              psynotification: widget.psynotification,
              onNotificationOpened: () {
                Future.delayed(Duration.zero, () {
                  setState(() {
                    widget.psynotification.opened = true;
                  });
                });
              },
            ),
          ),
        );
      },
      child: ListTile(
        title: NotificationBox(
          isPerson: widget.psynotification.isperson,
          title: widget.psynotification.title,
          date: widget.psynotification.date,
          message: widget.psynotification.message,
          time: widget.psynotification.time,
          icon: widget.psynotification.icon,
          opened: widget.psynotification.opened,
          ),
      ),
    );
  }
}

