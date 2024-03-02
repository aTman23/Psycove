import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';

class PatientContainer extends StatelessWidget {
  const PatientContainer(
      {super.key,
      required this.screenSize,
      required this.name,
      required this.gender,
      required this.age});
  final Size screenSize;
  final String name;
  final String gender;
  final String age;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: (){
        Navigator.pushNamed(context, '/clientList');
      },
      onTap: (){
        Navigator.pushNamed(context, '/personDetails');
      },
      child: Container(
        height: screenSize.height * 0.22,
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xffc5edff),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const CircleAvatar(
              radius: 50,
              child: Image(
                image: AssetImage("assets/images/image 1762.png"),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Helvetica(text: name, size: 18, weight: FontWeight.w700),
                Helvetica(
                    text: "Gender-$gender", size: 16, weight: FontWeight.w500),
                Helvetica(
                    text: "Age-$age", size: 16, weight: FontWeight.w500),
                const Helvetica(
                    text: "Occupation", size: 16, weight: FontWeight.w500),
                const Helvetica(
                    text: "Time Slot -", size: 15, weight: FontWeight.w600),
                Container(
                  alignment: Alignment.center,
                  width: screenSize.width * 0.375,
                  decoration: BoxDecoration(
                      color: const Color(0xffc5edff),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Helvetica(
                    text: "2:00 pm To 2:30 pm",
                    size: 13,
                    weight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
