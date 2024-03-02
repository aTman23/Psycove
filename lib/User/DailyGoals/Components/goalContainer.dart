import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Database/localDatabase.dart';
import '../../SignIn-SignUp/Backend/backendScripts.dart';
import '../../SignIn-SignUp/SignUp Screen/dialogs.dart';

class GoalContainerLeft extends StatefulWidget {
  const GoalContainerLeft(
      {super.key,
      required this.image,
      required this.heading,
      required this.goalController,
      required this.goalType});
  final String image;
  final String heading;
  final TextEditingController goalController;
  final String goalType;

  @override
  State<GoalContainerLeft> createState() => _GoalContainerLeftState();
}

class _GoalContainerLeftState extends State<GoalContainerLeft> {
  bool goalStatus = false;
  String goal = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        border: Border.all(width: 1, color: const Color(0x99D3A3F1)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(widget.image),
                width: 150,
                height: 150,
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Helvetica(
                    text: widget.heading,
                    size: 16,
                    weight: FontWeight.w700,
                  ),
                  MaterialButton(
                    onPressed: () {
                      dialog(context, widget.goalController);
                      setState(() {});
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: const Color(0xFFE9D3F8),
                    child: const Helvetica(text: "Write here",size: 12,weight: FontWeight.w600,),
                  ),
                ],
              )
            ],
          ),
          if (goal != "")
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  color: const Color(0xFFE9D3F8),
                  border: Border.all(width: 0.1),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Checkbox(
                          value: goalStatus,
                          onChanged: (bool? val) {
                            setState(() {
                              goalStatus = val!;
                            });
                          },
                        ),
                        Flexible(
                          child: Helvetica(
                            text:goal,
                            size: 15,
                             weight: FontWeight.w500,
                              decoration: goalStatus
                                    ? TextDecoration.lineThrough
                                    : TextDecoration.none,

                            maxlines: 2,
                            overflow: TextOverflow.ellipsis,
                            softwrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    alignment: Alignment.centerRight,
                    child: MaterialButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        goal = "";

                        setState(() {});
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.red,
                      child: const Icon(
                        Icons.delete,
                        // color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  dialog(BuildContext context, TextEditingController goalController) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: SizedBox(
              width: 400,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Helvetica(
                      text: "Write your goal",
                      size: 20,
                      weight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      hintText: "Write here...",
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                        ),
                      ),
                    ),
                    minLines: 1,
                    maxLines: 1,
                    maxLength: 25,
                    controller: goalController,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          Navigator.pop(context);
                          goalController.clear();
                        },
                        color: const Color(0xFFE9D3F8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: const Helvetica(text: "Cancel",weight: FontWeight.w500,size: 14,),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      MaterialButton(
                        onPressed: () async {
                          // loadingScreen(context);
                          goal = goalController.text;
                          bool apiStatus = true; //was false
                          // if (widget.goalType == "work") {
                          //   apiStatus =
                          //       await workGoal(localDatabase.data['uid'], goal);
                          // }
                          // print(apiStatus);

                          setState(() {
                            // goalController.clear();

                            if (apiStatus) {
                              goalStatus = false;
                              Navigator.pop(context);
                              // Navigator.pop(context);
                              goalController.clear();
                            }
                            // else {
                            //   Navigator.pop(context);
                            //   error(context);
                            // }
                          });
                        },
                        color: const Color(0xFFE9D3F8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: const Helvetica(text: "Done",weight: FontWeight.w500,size: 14,),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}

class GoalContainerRight extends StatefulWidget {
  const GoalContainerRight(
      {super.key,
      required this.image,
      required this.heading,
      required this.goalController});
  final String image;
  final String heading;
  final TextEditingController goalController;

  @override
  State<GoalContainerRight> createState() => _GoalContainerRightState();
}

class _GoalContainerRightState extends State<GoalContainerRight> {
  bool goalStatus = false;
  String goal = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        border: Border.all(width: 1, color: const Color(0x99D3A3F1)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Helvetica(
                    text: widget.heading,
                    size: 16,
                    weight: FontWeight.w700,
                  ),
                  MaterialButton(
                    onPressed: () {
                      dialog(context, widget.goalController);
                      setState(() {});
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: const Color(0xFFE9D3F8),
                    child: const Helvetica(text: "Write here",size: 12,weight: FontWeight.w600,),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Image(
                image: AssetImage(widget.image),
                width: 150,
                height: 150,
              ),
            ],
          ),
          if (goal != "")
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  color: const Color(0xFFE9D3F8),
                  border: Border.all(width: 0.1),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Checkbox(
                          value: goalStatus,
                          onChanged: (bool? val) {
                            setState(() {
                              goalStatus = val!;
                            });
                          },
                        ),
                        Flexible(
                          child: Helvetica(text:
                            goal,
                            size: 15,
                             weight: FontWeight.w500,
                                decoration: goalStatus
                                    ? TextDecoration.lineThrough
                                    : TextDecoration.none,

                            maxlines: 2,
                            overflow: TextOverflow.ellipsis,
                            softwrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    alignment: Alignment.centerRight,
                    child: MaterialButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        goal = "";

                        setState(() {});
                      },
                      child: Icon(
                        Icons.delete,
                        // color: Colors.white,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  dialog(BuildContext context, TextEditingController goalController) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: SizedBox(
              width: 400,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Helvetica(
                      text: "Write your goal",
                      size: 20,
                      weight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      hintText: "Write here...",
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                        ),
                      ),
                    ),
                    minLines: 1,
                    maxLines: 1,
                    maxLength: 25,
                    controller: goalController,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          Navigator.pop(context);
                          goalController.clear();
                        },
                        color: const Color(0xFFE9D3F8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: const Helvetica(text: "Cancel",weight: FontWeight.w500,size: 14,),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.pop(context);
                          setState(() {
                            goal = goalController.text;
                            goalStatus = false;
                            goalController.clear();
                          });
                        },
                        color: const Color(0xFFE9D3F8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: const Helvetica(text: "Done",weight: FontWeight.w500,size: 14,),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
