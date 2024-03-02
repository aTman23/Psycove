import 'package:flutter_svg/flutter_svg.dart';

class NotificationItem {
  final String title;
  final String date;
  final String time;
  final String message;
  final  SvgPicture  icon;
  bool opened;

  NotificationItem( {required this.date,required this.time,required this.title,required this.icon, required this.message,this.opened =false});
}

List<NotificationItem> notifications = [
  NotificationItem(date: 'January 12, 2024',
      message: 'Lorem ipsum dolor sit amet this for the consectetur. Suspendisse quam wjdkc dchskbfv dfbdfkjf kbvk;v kjbdb',
      time: '12:45 PM',
      icon: SvgPicture.asset('assets/notification_icons/smile.svg',height: 24,width: 24,),
      title: 'How are you feeling?'),
  NotificationItem(date: 'January 12, 2024',
      message: 'Lorem ipsum dolor sit amet this for the consectetur. Suspendisse quam wjdkc dchskbfv dfbdfkjf kbvk;v kjbdb',
      time: '12:45 PM',
      icon: SvgPicture.asset('assets/notification_icons/dailygoal.svg',height: 24,width: 24,),
      title: 'Daily Goals'),
  NotificationItem(date: 'January 15, 2024',
      message: 'Lorem ipsum dolor sit amet this for the consectetur. Suspendisse quam wjdkc dchskbfv dfbdfkjf kbvk;v kjbdb',
      time: '03:45 PM',
      icon:SvgPicture.asset('assets/notification_icons/journal.svg',height: 24,width: 24,),
      title: 'Daily Journal'),
  NotificationItem(date: 'January 15, 2024',
      message: 'Lorem ipsum dolor sit amet this for the consectetur. Suspendisse quam wjdkc dchskbfv dfbdfkjf kbvk;v kjbdb',
      time: '12:45 PM',
      icon: SvgPicture.asset('assets/notification_icons/tools.svg',height: 24,width: 24,),
      title: 'Realaxation Tools'),
  NotificationItem(date: 'January 15, 2024',
      message: 'Lorem ipsum dolor sit amet this for the consectetur. Suspendisse quam wjdkc dchskbfv dfbdfkjf kbvk;v kjbdb',
      time: '12:45 PM',
      icon: SvgPicture.asset('assets/notification_icons/dailygoal.svg',height: 24,width: 24,),
      title: 'Psycologist'),
  NotificationItem(date: 'January 16, 2024',
      message: 'Lorem ipsum dolor sit amet this for the consectetur. Suspendisse quam wjdkc dchskbfv dfbdfkjf kbvk;v kjbdb',
      time: '03:41 PM',
      icon: SvgPicture.asset('assets/notification_icons/community.svg',height: 24,width: 24,),
      title: 'Community notification '),

  // Add more notifications as needed
];