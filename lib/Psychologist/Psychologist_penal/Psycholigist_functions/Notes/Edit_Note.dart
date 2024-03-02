import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'Notes_Model/Note_model.dart';

class EditNotes extends StatefulWidget {
  final Note notes;
  EditNotes({required this.notes});

  @override
  State<EditNotes> createState() => _EditNotesState();
}

class _EditNotesState extends State<EditNotes> {
  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController(text: widget.notes.title);
    TextEditingController contentController = TextEditingController(text: widget.notes.content);
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
            const Spacer(),
            const Helvetica(text:'Edit Note',
                color: Colors.black,
                size: 24,
                weight: FontWeight.w500,

            ),
            const Spacer(),
            SizedBox(
              width: 30.w,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff8ADCFF), width: 2)),
              child: TextField(
                style: const TextStyle(
                  fontFamily: "Helvetica",
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
                controller: titleController,
                decoration: const InputDecoration(contentPadding:
                EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  border: InputBorder.none,
                  hintText: "Title",
                  hintStyle: TextStyle(
                    fontFamily: "Helvetica",
                      fontSize: 17.0, // Set the desired font size
                      fontWeight:
                      FontWeight.normal // Set the desired font weight
                  ),),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    border:
                    Border.all(color: const Color(0xff8ADCFF), width: 2)),
                child: TextField(
                  style: const TextStyle(
                    fontFamily: "Helvetica",
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlignVertical: TextAlignVertical.top,
                  expands: true,
                  controller: contentController,
                  maxLines: null,
                  minLines: null,
                  decoration: const InputDecoration(
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    hintStyle: TextStyle(
                      fontFamily: "Helvetica",
                        fontSize: 17.0, // Set the desired font size
                        fontWeight:
                        FontWeight.normal // Set the desired font weight
                    ),
                    border: InputBorder.none,
                    hintText: 'Note here...',
                  ),

                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                width: 200.w,
                height:40.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: const Color(0xff8ADCFF), // Text color
                    elevation: 5, // Elevation
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // BorderRadius
                    ),
                  ),
                  onPressed: () {
                    Note updatednote= Note(
                        title: titleController.text,
                        content: contentController.text);
                    Navigator.pop(context, updatednote);
                  },
                  child: const Helvetica(text:'Save Edit',
                    color: Colors.black,
                    size: 16,
                    weight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
