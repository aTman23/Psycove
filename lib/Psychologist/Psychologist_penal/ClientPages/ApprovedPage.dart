import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Notification/psyNotification.dart';
import 'ClientComponents/ApprovedList.dart';
import 'ClientComponents/Calendar_widget.dart';
import 'ClientComponents/PendingList.dart';
import 'ListOfClient.dart';

class ApprovedPage extends StatefulWidget {
  const ApprovedPage({super.key});

  @override
  State<ApprovedPage> createState() => _ApprovedPageState();
}

class _ApprovedPageState extends State<ApprovedPage> {
  int _selectedIndex = 0;
  bool notify =false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        currentIndex: 0,
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
          } else if (index == 1) {
            Navigator.pushNamed(context, '/psychologistHomepage');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/appointmentList');

          }
        },
      ),
      backgroundColor: const Color(0xff8ADCFF),
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.black,
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
                              notify =true;
                            });

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const PsyNotification()),
                            );
                          },
                          icon: const Icon(
                            Icons.notifications_outlined,
                            size: 30,
                            color: Colors.black,
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
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,),
                child: Row(
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
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ListOfClient()),
                        );

                      },
                      icon: const Icon(
                        Icons.watch_later_outlined,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 545.h,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Center(
                          child: Calendar()),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16))),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height:40.h,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: const Color(0xff8ADCFF),
                                            width: 2
                                        )
                                    ),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor:  _selectedIndex == 0 ?const Color(0xff8ADCFF):Colors.white, // Text color
                                        elevation: 5,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(0),
                                        ),// Elevation
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _selectedIndex=0;
                                        });

                                      },
                                      // child: Text('Approved',style: GoogleFonts.inder(
                                      //   color: Colors.black,
                                      //   fontSize: 16,
                                      //   fontWeight: FontWeight.normal,
                                      // ),),
                                      child: const Helvetica(text: 'Approved',size: 16,weight: FontWeight.normal,),
                                    ),
                                  ),
                                  Container(
                                    height:40.h,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: const Color(0xff8ADCFF),
                                        width: 2
                                      )
                                    ),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.black,
                                        backgroundColor:_selectedIndex == 1 ?const Color(0xff8ADCFF):Colors.white, // Text color
                                        elevation: 5,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(0),
                                        ),// Elevation
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _selectedIndex=1;
                                        });

                                      },

                                      child: const Helvetica(text: 'Pending',size: 16,weight: FontWeight.normal,),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            _selectedIndex==0?const ApprovedList():const PendingList(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
