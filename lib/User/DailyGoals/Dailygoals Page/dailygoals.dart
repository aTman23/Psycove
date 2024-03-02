import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import '../../Community/Components/goalController.dart';
import '../Components/goalContainer.dart';

class DailyGoals extends StatefulWidget {
  const DailyGoals({super.key});

  @override
  State<DailyGoals> createState() => _DailyGoalsState();
}

class _DailyGoalsState extends State<DailyGoals> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD3A3F1),
        surfaceTintColor: Colors.transparent,
      ),
      backgroundColor: const Color(0xffF4F4F4),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xFFD3A3F1),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),

                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, top: 15),
                  height: 100,
                  child:  const Column(
                    children: [
                      Helvetica(
                          text: "Your Goals",
                          size: 22,
                          weight: FontWeight.w600),
                      Helvetica(
                        text:
                            "Setting goals is the first step to\naccomplishing anything meaningful",
                        size: 12,
                        weight: FontWeight.w600,
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  width: double.maxFinite,
                  child:  Row(
                    children: [
                      SizedBox(
                        width: (width * 0.675)>270?width * 0.675:270,
                      ),
                      const Image(
                        image: AssetImage("assets/images/dailygoals.png"),
                        width: 160,
                      ),
                    ],
                  ),
                )
              ],
            ),
            GoalContainerLeft(
              image: "assets/images/image-PhotoRoom 43.png",
              heading: "Work Goals",
              goalController: goalController1,
              goalType: 'work',
            ),
            GoalContainerRight(
              image: "assets/images/image-PhotoRoom 44.png",
              heading: "Career Goals",
              goalController: goalController2,
            ),
            GoalContainerLeft(
              image: "assets/images/image-PhotoRoom 48.png",
              heading: "Learning Goals",
              goalController: goalController3,
              goalType: 'career',
            ),
            GoalContainerRight(
              image: "assets/images/image-PhotoRoom 45.png",
              heading: "Family Goals",
              goalController: goalController4,
            ),
            GoalContainerLeft(
              image: "assets/images/image-PhotoRoom 46.png",
              heading: "Personal Goals",
              goalController: goalController5,
              goalType: 'personal',
            ),
          ],
        ),
      ),
    );
  }
}
