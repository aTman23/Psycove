import 'package:flutter/material.dart';

import '../../../Fonts/helveticaFont.dart';

class NotesContainer extends StatelessWidget {
  const NotesContainer({super.key, required this.title, required this.content});
  final String title;
  final String content;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Helvetica(text:title,size: 20,weight: FontWeight.w500,),Helvetica(text:content,size: 16,weight: FontWeight.w500,),],
      ),
    );
  }
}
