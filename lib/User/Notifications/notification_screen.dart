import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../Fonts/helveticaFont.dart';
import 'notification_model/mofication_model.dart';
import 'notification_detail_page.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
                  notifications.clear();
                });
              },
              child: const Helvetica(text:"Clear All",
                  size: 13,
                  weight: FontWeight.w500,
                  color: Color(0xffD3A3F1)
              ),
            )
          ],
        ),
      ),
      body: notifications.isEmpty
          ?  const Center(child: Helvetica(text:'No notifications',
        size: 16,
      ),)
          : ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          // Display date header if it's the first item of the day
          if (index == 0 || notifications[index].date != notifications[index - 1].date) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Helvetica(
                    text:notifications[index].date,
                    size: 12,
                     weight: FontWeight.w500,
                        color: const Color(0xff797C7B)),

                ),
                NotificationTile(notification: notifications[index]),
              ],
            );
          }
          // Display notification item
          return NotificationTile(notification: notifications[index]);
        },
      ),
    );
  }
}

class NotificationTile extends StatefulWidget {
  final NotificationItem notification;

  const NotificationTile({super.key, required this.notification});

  @override
  State<NotificationTile> createState() => _NotificationTileState();
}

class _NotificationTileState extends State<NotificationTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.notification.opened=true;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NotificationDetailPage(
              notification: widget.notification,
              onNotificationOpened: () {
                Future.delayed(Duration.zero, () {
                  setState(() {
                    widget.notification.opened = true;
                  });
                });
              },
            ),
          ),
        );
      },

      child: ListTile(
        title: Container(
          padding: EdgeInsets.symmetric(horizontal:12.w),
          width: 327.w,
          height: 100.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: const Color(0xff000000).withOpacity(0.05),
                blurRadius: 20,
                spreadRadius: 0,
                offset: const Offset(4, 8),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  alignment: Alignment.center,
                  child: widget.notification.icon),
              SizedBox(width: 12.w,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                width: 252.w,
                height: 70.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Helvetica(text:widget.notification.title,
                          size: 14,
                          weight: FontWeight.w600,
                        ),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: widget.notification.opened?  Colors.white: const Color(0xffD3A3F1),
                        ),
                      ],
                    ),
                    Helvetica(text:widget.notification.message,
                      maxlines: 2,
                      overflow: TextOverflow.ellipsis,

                        size: 12,
                        weight: FontWeight.w400,
                      ),
                    const Spacer(),
                    Row(
                      children: [
                        Helvetica(text:widget.notification.time,
                            size: 10,
                            weight: FontWeight.w500,
                            color:const Color(0xff797C7B)
                        ),
                        const Spacer(),
                        Helvetica(text:widget.notification.date,
                            size: 10,
                            weight: FontWeight.w500,
                            color: const Color(0xff797C7B)
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}