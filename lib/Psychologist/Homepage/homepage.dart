import 'package:atman/Fonts/helveticaFont.dart';
import 'package:atman/Psychologist/Homepage/patientContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: const Color(0xff8adcff),
        surfaceTintColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                InkWell(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                      image: AssetImage("assets/images/image1.png"),
                      width: 40,
                      height: 40,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/psychologistProfile');
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Helvetica(
                      text: "Hello, Welcome 🎉",
                      size: 14,
                      weight: FontWeight.w400,
                    ),
                    Helvetica(
                      text: 'name',
                      size: 16,
                      weight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/eventAdder');
              },
              icon: const Icon(
                Icons.calendar_month_rounded,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/psychologistCommunityPage');
              },
              icon: const Icon(
                CupertinoIcons.tv,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/psychologistNotification');
              },
              icon: const Icon(
                Icons.notifications_none_rounded,
                size: 30,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.local_hospital_rounded,
                size: 30,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
                size: 30,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person_3,
                size: 30,
              ),
              label: ""),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/approvedPage');
          } else if (index == 1) {
          } else if (index == 2) {
            Navigator.pushNamed(context, '/appointmentList');

          }
        },
      ),
      backgroundColor: const Color(0xff8adcff),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              // height: screenSize.height * 0.3,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(),
                        ),
                        width: screenSize.width * 0.42,
                        height: screenSize.height * 0.075,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Helvetica(
                              text: "No of Client",
                              size: 14,
                              weight: FontWeight.w700,
                            ),
                            Helvetica(
                                text: "7", size: 20, weight: FontWeight.w700)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.03,
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(),
                          ),
                          width: screenSize.width * 0.42,
                          height: screenSize.height * 0.075,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Helvetica(
                                text: "Daily Routine",
                                size: 14,
                                weight: FontWeight.w700,
                              ),
                            ],
                          ),
                        ),
                        onTap: (){
                          Navigator.pushNamed(context, '/dailyRoutine');
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    width: screenSize.width * 0.05,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(),
                    ),
                    width: screenSize.width * 0.42,
                    height: screenSize.height * 0.18,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Helvetica(
                          text: "Next appointment in 2 Hrs",
                          size: 14,
                          weight: FontWeight.w700,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.05,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                // border: Border.all(color: Color(0xff0c8ce9)),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  PatientContainer(
                    screenSize: screenSize,
                    name: "Hitesh Sakore",
                    age: "23",
                    gender: "Male",
                  ),
                  PatientContainer(
                    screenSize: screenSize,
                    name: "Nilesh Sakore",
                    age: "23",
                    gender: "Male",
                  ),
                  PatientContainer(
                    screenSize: screenSize,
                    name: "Revanth Sakore",
                    age: "23",
                    gender: "Male",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
