import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PsyNotificationItem {
  final String title;
  final String date;
  final String time;
  final String message;
  final  SvgPicture  icon;
  final  SvgPicture  right;
  final  SvgPicture  cross;
  final bool    isperson;
  bool opened;

  PsyNotificationItem(  {required this.date,required this.isperson,required this.right,required this.cross,required this.time,required this.title,required this.icon, required this.message,this.opened =false});
}

List<PsyNotificationItem> psynotifications = [
  PsyNotificationItem(date: 'January 12, 2024',
      message: 'Lorem ipsum dolor sit amet this for the consectetur. Suspendisse quam wjdkc dchskbfv dfbdfkjf kbvk;v kjbdb',
      time: '12:45 PM',
      icon: SvgPicture.asset('assets/notification_icons/dailygoal.svg',height: 24,width: 24,color: const Color(0xff8ADCFF),),
      title: 'Next Client',
    cross: SvgPicture.asset('assets/notification_icons/cross-circle.svg',height: 24,width: 24,),
    isperson: false,
    right:SvgPicture.asset('assets/notification_icons/cross-circle.svg',height: 24,width: 24,),
  ),
  PsyNotificationItem(
      date: 'January 15, 2024',
      message: 'Lorem ipsum dolor sit amet this for the consectetur. Suspendisse quam wjdkc dchskbfv dfbdfkjf kbvk;v kjbdb',
      time: '03:45 PM',
      icon:SvgPicture.asset('assets/notification_icons/prsn.svg',height: 24,width: 24,),
      title: 'Ramesh Raghav',
    cross: SvgPicture.asset('assets/notification_icons/cross-circle.svg',height: 24,width: 24,),
    isperson: true,
    right:SvgPicture.asset('assets/notification_icons/cross-circle.svg',height: 24,width: 24,),),
  PsyNotificationItem(date: 'January 15, 2024',
      message: 'Lorem ipsum dolor sit amet this for the consectetur. Suspendisse quam wjdkc dchskbfv dfbdfkjf kbvk;v kjbdb',
      time: '12:45 PM',
      icon: SvgPicture.asset('assets/notification_icons/tools.svg',height: 24,width: 24,color: const Color(0xff8ADCFF),),
      title: 'Relaxation Tools',
    cross: SvgPicture.asset('assets/notification_icons/cross-circle.svg',height: 24,width: 24,),
    isperson: false,
    right:SvgPicture.asset('assets/notification_icons/cross-circle.svg',height: 24,width: 24,),),
  PsyNotificationItem(date: 'January 15, 2024',
      message: 'Lorem ipsum dolor sit amet this for the consectetur. Suspendisse quam wjdkc dchskbfv dfbdfkjf kbvk;v kjbdb',
      time: '12:45 PM',
      icon: SvgPicture.asset('assets/notification_icons/dailygoal.svg',height: 24,width: 24,color: const Color(0xff8ADCFF),),
      title: 'Next Client',
    cross: SvgPicture.asset('assets/notification_icons/cross-circle.svg',height: 24,width: 24,),
    isperson: false,
    right:SvgPicture.asset('assets/notification_icons/cross-circle.svg',height: 24,width: 24,),),
  PsyNotificationItem(date: 'January 16, 2024',
      message: 'Lorem ipsum dolor sit amet this for the consectetur. Suspendisse quam wjdkc dchskbfv dfbdfkjf kbvk;v kjbdb',
      time: '03:41 PM',
      icon: SvgPicture.asset('assets/notification_icons/community.svg',height: 24,width: 24, color: const Color(0xff8ADCFF),),
      title: 'Community Notification',
      cross: SvgPicture.asset('assets/notification_icons/cross-circle.svg',height: 24,width: 24,),
      isperson: false,
      right:SvgPicture.asset('assets/notification_icons/cross-circle.svg',height: 24,width: 24,), ),
  // Add more notifications as needed
];