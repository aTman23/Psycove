import 'package:flutter/material.dart';

import '../ListOfClient.dart';
import 'clientCard.dart';

class ApprovedList extends StatefulWidget {
  const ApprovedList({super.key});

  @override
  State<ApprovedList> createState() => _ApprovedListState();
}

class _ApprovedListState extends State<ApprovedList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (context, index) {
          return InkWell(
            onLongPress: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const ListOfClient())
              );
            },
            child: const ApprovedCard(
                name: 'Aditya saruke',
                gender: "Male",
                age:"21",
                occupation: 'Student',
                timeSlot: "01:30 pm to 02:30 pm", date: '12:03:24',),
          );
        });
  }
}
