import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'NoteDetailed_Screen.dart';
import 'Note_component/Note_card.dart';
import 'Notes_Model/Note_model.dart';
import 'add_note_Screen.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}
class _NotesScreenState extends State<NotesScreen> {
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
            const Spacer(),
            const Helvetica(text:
              'User’s Record',

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
  padding: const EdgeInsets.all(12.0),
  child: GridView.builder(
    itemCount: notes.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemBuilder: (context,index){
      return NoteCard(
          note: notes[index],
        onTap: ()   {
           Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NoteDetailsScreen(note: notes[index],index: index,)),
          ).then((updatednote) {
            if (updatednote != null) {
              setState(() {
                notes[index] = updatednote;
              });
            }

          });



        }, );
      }),
),
      floatingActionButton: CircleAvatar(
        backgroundColor: const Color(0xff8ADCFF),
        radius: 30,
        child:IconButton(
          icon: const Icon(Icons.add,size: 40,),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>const AddNoteScreen()),
            ).then((newnotes) {
              if (newnotes!= null) {
                setState(() {
                  notes.add(newnotes);
                });
              }
            });
          },
        )
      ),
    );
  }
}
