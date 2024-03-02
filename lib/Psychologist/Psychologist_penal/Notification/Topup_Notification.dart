import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Fonts/helveticaFont.dart';
import 'Noti_model/PsyNotifModel.dart';

//FOR ANY KIND OF NOTIFICATION...
class TopUpNotification extends StatefulWidget {
  const TopUpNotification({super.key});

  @override
  State<TopUpNotification> createState() => _TopUpNotificationState();
}

class _TopUpNotificationState extends State<TopUpNotification> {
  bool ismessage =true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal:12.w,vertical: 8.w),
        width: 327.w,
        height: 70.h,
        decoration: BoxDecoration(
          color: Colors.white,
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
                child:psynotifications[0].icon,),
            SizedBox(width: 12.w,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Helvetica(text:psynotifications[0].title,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    size: 14,
                    weight: FontWeight.w600,
                  ),
                  Helvetica(text:psynotifications[0].message,
                    maxlines: 3,
                    overflow: TextOverflow.ellipsis,

                      color: Colors.black,
                      decoration: TextDecoration.none,
                      size: 12,
                      weight: FontWeight.w400,
                    ),
                ],
              ),
            ),
            ismessage?IconButton(
                onPressed: (){},
                icon: const Icon(Icons.reply_rounded,size: 30,)):Container()
          ],
        ),
      ),
    );
  }
}
