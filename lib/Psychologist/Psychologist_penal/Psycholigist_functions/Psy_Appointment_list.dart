
import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../ChatPage/psyChat_room.dart';
import '../DialogBoxes/UserAddtoList.dart';
import '../DialogBoxes/userSearchDialog.dart';
import '../Notification/psyNotification.dart';
import 'DetailsComponents/ButtonContainer.dart';
import 'Notes/Notes_screen.dart';
import 'PsyGraphs/psyGraph_page.dart';
import 'Psy_Detail.dart';
import 'TaskAssign/AssignTask.dart';


class PsyAppointmentList extends StatefulWidget {
  const PsyAppointmentList({super.key});

  @override
  State<PsyAppointmentList> createState() => _PsyAppointmentListState();
}

class _PsyAppointmentListState extends State<PsyAppointmentList> {
  bool notify =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        currentIndex: 2,
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
            Navigator.pushNamed(context, '/psychologistHomepage');
          } else if (index == 2) {

          }
        },
      ),
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
                        icon: const Icon(
                          Icons.arrow_back_ios_new_outlined,
                          size: 30,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                          // Handle button press
                        },
                      ),
                      Stack(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                notify= true;
                              });
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const PsyNotification()),
                              );
                            },
                            icon: const Icon(
                              Icons.notifications_outlined,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                          Positioned(
                            right: 12.w,
                            top: 12.h,
                            child: notify?Container(): const CircleAvatar(
                              radius: 4,
                              backgroundColor: Colors.red,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          CircleAvatar(
                            radius: 28,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  AssetImage('assets/images/image1.png'),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Helvetica(
                                  text: 'Hello, Welcome 🎉',
                                  size: 14,
                                  weight: FontWeight.w400),
                              Helvetica(
                                text: 'Nilesh Salunke',
                                size: 16,
                                weight: FontWeight.w600,
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              UserSearchDialog(context);
                            },
                            icon: const Icon(
                              Icons.search_outlined,
                              size: 35,
                              color: Colors.black,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              UserAddToListDialog(context);
                            },
                            icon: const Icon(
                              Icons.add,
                              size: 40,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
          ),
      ),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 40),
              height: 250,
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
                              text: 'Hitesh Sakore',
                              size: 18,
                              weight: FontWeight.bold),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => PsyChatRoom()),
                                  );
                                },
                                child: const ButtonContainer(Bname: 'Chat'),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => NotesScreen()),
                                  );
                                },
                                child: const ButtonContainer(Bname: 'Notes'),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => PsyPerformence()),
                                  );

                                },
                                child: const ButtonContainer(Bname: 'Monitor'),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => AssignTask()),
                                  );
                                },
                                child: const ButtonContainer(Bname: 'Tasks'),
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
                          MaterialPageRoute(builder: (context) => PersonDetails()),
                        );

                      },
                      child: const Helvetica(
                          text: 'View More',
                          size: 14,
                          weight: FontWeight.normal))
                ],
              ),
            );
          }),
    );
  }


}
