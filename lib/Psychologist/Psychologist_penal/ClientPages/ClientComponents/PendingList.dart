import 'package:flutter/material.dart';

import '../ListOfClient.dart';
import 'clientCard.dart';

class PendingList extends StatefulWidget {
  const PendingList({super.key});

  @override
  State<PendingList> createState() => _PendingListState();
}

class _PendingListState extends State<PendingList> {
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
              child: PendingCard(timeSlot: '01:30 am To 02:30 am'));
        });
  }
}
