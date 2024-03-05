
import 'package:flutter/material.dart';

import '../../../../Fonts/helveticaFont.dart';
import '../../Psycholigist_functions/DetailsComponents/ButtonContainer.dart';
import '../../Psycholigist_functions/Psy_Detail.dart';

class ClientContainer extends StatefulWidget {
  final String name;
  final String gender;
  final String age;
  final String occupation;
  final String timeSlot;
  final String date;
  bool check;

  ClientContainer(
      {super.key,
      required this.check,
      required this.name,
      required this.gender,
      required this.age,
      required this.occupation,
      required this.timeSlot, required this.date});

  @override
  State<ClientContainer> createState() => _ClientContainerState();
}

class _ClientContainerState extends State<ClientContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      height: 260,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/white_board.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    value: widget.check,
                    onChanged: (bool? newValue) {
                      setState(() {
                        widget.check = newValue!;
                      });
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: CircleAvatar(
                      backgroundColor: Color(0xff8ADCFF),
                      radius: 60,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/117.png'),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Helvetica(
                      size: 18, text: widget.name, weight: FontWeight.bold),
                  Helvetica(
                    text: "Gender: ${widget.gender}",
                    alignment: TextAlign.right,
                    size: 16,
                    weight: FontWeight.w500,
                  ),
                  Helvetica(
                    text: "Age: ${widget.age}",
                    size: 16,
                    weight: FontWeight.w500,
                    alignment: TextAlign.right,
                  ),
                  Helvetica(
                    text: widget.occupation,
                    size: 16,
                    weight: FontWeight.w500,
                    alignment: TextAlign.right,
                  ),
                  Row(
                    children: [
                      Helvetica(
                        text: "Date:-",
                        size: 16,
                        weight: FontWeight.w500,
                        alignment: TextAlign.right,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                            color: const Color(0xff8ADCFF).withOpacity(0.50),
                            borderRadius: BorderRadius.circular(3)),
                        child: Helvetica(
                          text: widget.date,
                          size: 13,
                          weight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  const Helvetica(
                    text: "Time Slot:-",
                    size: 16,
                    weight: FontWeight.w500,
                    alignment: TextAlign.right,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 150,
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xff8ADCFF).withOpacity(0.50),
                        borderRadius: BorderRadius.circular(3)),
                    child: Helvetica(
                      text: widget.timeSlot,
                      size: 13,
                      weight: FontWeight.w500,
                    ),
                  )
                ],
              )
            ],
          ),
          const Spacer(),
          InkWell(
              splashColor: Colors.blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PersonDetails()),
                );
              },
              child: const Helvetica(
                  text: 'View More', size: 14, weight: FontWeight.normal))
        ],
      ),
    );
  }
}

class PendingCard extends StatefulWidget {
  final String timeSlot;
  final String date;

  const PendingCard({
    super.key,
    required this.timeSlot, required this.date,
  });

  @override
  State<PendingCard> createState() => _PendingCardState();
}

class _PendingCardState extends State<PendingCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 40),
      height: 260,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/white_board.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          const Spacer(),
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: Color(0xff8ADCFF),
                radius: 60,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/117.png'),
                ),
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Helvetica(
                      text: 'Hitesh Sakore', size: 18, weight: FontWeight.bold),
                  const SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Helvetica(
                            text: "Date:-",
                            size: 16,
                            weight: FontWeight.w500,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 100,
                            height: 30,
                            decoration: BoxDecoration(
                                color: const Color(0xff8ADCFF).withOpacity(0.50),
                                borderRadius: BorderRadius.circular(3)),
                            child: Helvetica(
                              text: widget.date,
                              size: 13,
                              weight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),

                      const Helvetica(
                        text: "Time Slot:-",
                        size: 16,
                        weight: FontWeight.w500,
                        alignment: TextAlign.right,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 30,
                        decoration: BoxDecoration(
                            color: const Color(0xff8ADCFF).withOpacity(0.50),
                            borderRadius: BorderRadius.circular(3)),
                        child: Helvetica(
                          text: widget.timeSlot,
                          size: 13,
                          weight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const ButtonContainer(Bname: 'Accept'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {},
                        child: const ButtonContainer(Bname: 'Deny'),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          const Spacer(),
          InkWell(
              splashColor: Colors.blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PersonDetails()),
                );
              },
              child: const Helvetica(
                  text: 'View More', size: 14, weight: FontWeight.normal))
        ],
      ),
    );
  }
}

class ApprovedCard extends StatefulWidget {
  final String name;
  final String gender;
  final String age;
  final String occupation;
  final String timeSlot;
  final String date;

  const ApprovedCard(
      {super.key,
      required this.name,
      required this.gender,
      required this.age,
      required this.occupation,
      required this.timeSlot, required this.date});

  @override
  State<ApprovedCard> createState() => _ApprovedListState();
}

class _ApprovedListState extends State<ApprovedCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      height: 260,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/white_board.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [

          Row(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: CircleAvatar(
                  backgroundColor: Color(0xff8ADCFF),
                  radius: 60,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/117.png'),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Helvetica(
                      size: 18, text: widget.name, weight: FontWeight.bold),
                  Helvetica(
                    text: "Gender: ${widget.gender}",
                    size: 16,
                    weight: FontWeight.w500,
                    alignment: TextAlign.right,
                  ),
                  Helvetica(
                    text: "Age: ${widget.age}",
                    size: 16,
                    weight: FontWeight.w500,
                    alignment: TextAlign.right,
                  ),
                  Helvetica(
                    text: "Occupation: ${widget.occupation}",
                    size: 16,
                    weight: FontWeight.w500,
                    alignment: TextAlign.right,
                  ),
                  Row(
                    children: [
                      Helvetica(
                        text: "Date:-",
                        size: 16,
                        weight: FontWeight.w500,
                        alignment: TextAlign.right,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                          color: const Color(0xff8ADCFF).withOpacity(0.50),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Helvetica(
                          text: widget.date,
                          size: 13,
                          weight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Helvetica(
                    text: "Time Slot:-",
                    size: 16,
                    weight: FontWeight.w500,
                    alignment: TextAlign.right,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 150,
                    height: 30,
                    decoration: BoxDecoration(
                      color: const Color(0xff8ADCFF).withOpacity(0.50),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Helvetica(
                      text: widget.timeSlot,
                      size: 13,
                      weight: FontWeight.w500,
                    ),
                  )
                ],
              )
            ],
          ),
          const Spacer(),
          InkWell(
              splashColor: Colors.blue,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PersonDetails()),
                );
              },
              child: const Helvetica(
                  text: 'View More', size: 14, weight: FontWeight.normal))
        ],
      ),
    );
  }
}
