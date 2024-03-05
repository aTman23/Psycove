
import 'package:flutter/material.dart';
import '../../../Fonts/helveticaFont.dart';
import '../Components/exampleNotes.dart';
import '../Components/notesContainer.dart';

class OldNotes extends StatelessWidget {
  const OldNotes({super.key, required this.date});

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: const Color(0xCCD3A3F1),
        backgroundColor: const Color(0xCCD3A3F1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      body:  Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              width: double.maxFinite,
              child: Helvetica(
                text: "Notes",
                size: 25,
                weight: FontWeight.w500,
                alignment: TextAlign.left,
              ),
            ),
            Expanded(child: ListView.builder(itemCount: notes.length, itemBuilder: (BuildContext context, int index) { return date == notes[index].date?NotesContainer(title: notes[index].title, content: notes[index].content):SizedBox(); },))
          ],
        ),
      ),
    );
  }
}
