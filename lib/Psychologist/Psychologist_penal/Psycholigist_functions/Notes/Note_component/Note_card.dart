import 'dart:ui';
import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Notes_Model/Note_model.dart';
class NoteCard extends StatelessWidget {
  final Note note;
  final VoidCallback onTap;
   NoteCard( {required this.note,required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff8ADCFF),width: 2), // Border color
           // Border radius
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Helvetica(
              text:note.title,
              overflow: TextOverflow.ellipsis,
              weight: FontWeight.bold,
                size: 16.0,

            ),
            const SizedBox(height: 8.0),
            Helvetica(
              text:note.content,
              maxlines: 5,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),

    );
  }
}
