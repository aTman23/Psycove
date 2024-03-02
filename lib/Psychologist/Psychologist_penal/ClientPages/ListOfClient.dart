import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'ClientComponents/clientCard.dart';
import 'SendReminderPage.dart';

class ListOfClient extends StatefulWidget {
  const ListOfClient({super.key});

  @override
  State<ListOfClient> createState() => _ListOfClientState();
}

class _ListOfClientState extends State<ListOfClient> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200),
          child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              height: 150.h,
              decoration: const BoxDecoration(
                  color: Color(0xff8ADCFF),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: SvgPicture.asset(
                          'assets/chatBox_icon/back.svg',
                          width: 24.h,
                          height: 24.h,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                          // Handle button press
                        },
                      ),
                      const Spacer(),
                      const Helvetica(
                          text: 'Reminder', size: 24, weight: FontWeight.w500),
                      const Spacer(),
                      const SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (bool? newValue) {
                          setState(() {
                            _isChecked = newValue!;
                          });
                        },
                      ),
                      const Helvetica(
                          text: 'Select All',
                          size: 18,
                          weight: FontWeight.w500),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_forward_sharp,
                          size: 35,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SendReminderScreen()),
                          );

                          // Handle button press
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ))),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return ClientContainer(
              check: _isChecked,
              name: 'Aditya saruke',
              gender: "Male",
              age: "21",
              occupation: "Student",
              timeSlot: "01:30 am To 02:30 am");
        },
      ),
    );
  }
}
