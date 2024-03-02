import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Notes_Model/Note_model.dart';
import 'Edit_Note.dart';

class NoteDetailsScreen extends StatefulWidget {
  final Note note;
  final int index;
  const NoteDetailsScreen({super.key, required this.note, required this.index});

  @override
  State<NoteDetailsScreen> createState() => _NoteDetailsScreenState();
}

class _NoteDetailsScreenState extends State<NoteDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff8ADCFF),
        title: Row(
          children: [
            IconButton(
              icon: SvgPicture.asset(
                'assets/chatBox_icon/back.svg', // Replace with your SVG file path
                width: 24.h,
                height: 24.h,
              ),
              onPressed: () {
                Navigator.of(context).pop();
                // Handle button press
              },
            ),

            const Helvetica(
              text:'Note Details',

                color: Colors.black,
                size: 24,
                weight: FontWeight.w500,

            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                _editTextItem(context);
              },
            ),
            const SizedBox(width: 5,),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                _confirmDeleteTextItem(context);
              },
            ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Helvetica(text:widget.note.title, size: 18, weight: FontWeight.bold),
            const SizedBox(height: 15.0),
            Helvetica(
              text:widget.note.content,

                size: 18.0,
                weight: FontWeight.normal

            ),
          ],
        ),
      ),
    );
  }

  void _editTextItem(BuildContext context) async {
    Note? updatednote = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EditNotes(notes: widget.note,)),
    );
    if (updatednote != null) {
      Navigator.pop(context, updatednote);
    }
  }

  void _confirmDeleteTextItem(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Helvetica(text:'Confirm Delete'),
          content: const Helvetica(text:'Are you sure you want to delete this text item?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Helvetica(text:'Cancel'),
            ),
            TextButton(
              onPressed: () {
                notes.removeAt(widget.index);
                Navigator.pop(context);
                Navigator.pop(context,true);


              },
              child: const Helvetica(text: 'Delete'),
            ),
          ],
        );
      },
    );
  }


}
