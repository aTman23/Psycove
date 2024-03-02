import 'package:atman/Psychologist/Psychologist_penal/Psycholigist_functions/TaskAssign/taskModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../DetailsComponents/taskContainer.dart';

class AssignTask extends StatefulWidget {
  const AssignTask({super.key});

  @override
  State<AssignTask> createState() => _AssignTaskState();
}

class _AssignTaskState extends State<AssignTask> {
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
            Text(
              'Assign Tasks',
              style: GoogleFonts.inder(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 30.w,
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: task.length,
          itemBuilder: (context,index){
          Task tasks =task[index];
        return Dismissible(
          onDismissed: (direction){
            removeTask(index);
          },
          direction: DismissDirection.horizontal,
          key: Key(tasks.task),
          child: TaskContainer(
            isChecked: tasks.check,
            Task: tasks.task,
            isUser: false,
          ),
        );
      }),
      floatingActionButton: CircleAvatar(
        radius: 30,
        backgroundColor:  const Color(0xff8ADCFF),
        child: IconButton(
          onPressed: (){
            addTextItem();
          },
          icon: const Icon(Icons.edit,size: 40,),
        ),
      ),
    );
  }
  void addTextItem() async {
    String? title = await _showInputDialog(context, 'Assign Task', '');

    if (title != null ) {
      setState(() {
        task.add(Task(task: title, check: false));
      });
    }
  }
  Future<String?> _showInputDialog(BuildContext context, String title, String hintText) async {
    TextEditingController controller = TextEditingController();

    return showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(hintText: hintText),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, controller.text);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
  void removeTask(int index) {
    setState(() {
      task.removeAt(index);
    });
  }
}
