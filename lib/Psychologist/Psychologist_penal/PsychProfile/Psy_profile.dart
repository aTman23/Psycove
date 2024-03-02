import 'dart:typed_data';

import 'package:atman/Psychologist/Psychologist_penal/PsychProfile/psyMessage_centre.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import '../../../Fonts/helveticaFont.dart';
import '../../../User/models/models.dart';
import '../../../User/pages/dialogs/edit_name_dialog.dart';
import '../../../User/pages/dialogs/edit_userName_dialog.dart';
import 'Component/optionContainer.dart';
import 'FixYourSlot/FixTimeslot.dart';
import 'PsyAccount_info.dart';
import 'PsyData&Privacy.dart';
import 'PsyLogin&security.dart';
import 'PsyPersonal_Profile.dart';

class PsyProfile extends StatefulWidget {
  const PsyProfile({super.key});

  @override
  State<PsyProfile> createState() => _PsyProfileState();
}

class _PsyProfileState extends State<PsyProfile> {
  Uint8List? _psyimage;
  String profileName = 'Nikesh';
  String userName = 'nikesh848848';
  void selectImage()async{
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      _psyimage =img;
    });
  }
  void editProfileName() async {
    String? editedName = await showDialog(
      context: context,
      builder: (context) => EditProfileDialog(initialName: profileName),
    );

    if (editedName != null && editedName.isNotEmpty) {
      setState(() {
        profileName = editedName;
      });
    }
  }
  void editUserName() async {
    String? editedUserName = await showDialog(
      context: context,
      builder: (context) => EditUserDialog(userName:userName,),
    );

    if (editedUserName != null && editedUserName.isNotEmpty) {
      setState(() {
        userName = editedUserName;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    double ScreenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xffF4F4F4),
            ),
          ),
          Container(
            height: 170.h,
            decoration: const BoxDecoration(
              color: Color(0xff8ADCFF),
              borderRadius: BorderRadius.only(
                bottomLeft:
                Radius.circular(16.0), // Radius for the top-left corner
                bottomRight:
                Radius.circular(16.0), // Radius for the bottom-right corner
              ),
            ),
          ),
          Positioned(
            top: 30.h,
            left: 12.w,
            child: IconButton(
              icon: SvgPicture.asset(
                'assets/backA.svg', // Replace with your SVG file path
                width: 24,
                height: 24,
              ),
              onPressed: () {
                Navigator.of(context).pop();
                // Handle button press
              },
            ),
          ),
          Positioned(
            top: 65.h,
            left: 100.w,
            right: 100.w,
            child: Column(
              children: [
                Container(
                  width: 150.w,
                  height: 150.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xff8ADCFF),
                      width: 1.0,
                    ),
                  ),
                  child:_psyimage != null
                      ? CircleAvatar(
                    radius: 80,
                    backgroundImage: MemoryImage(_psyimage!),
                  )
                      : const CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('assets/images/image1.png'),
                  ),
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ),
          Positioned(
            top: 220.h,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 35.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Helvetica(
                          text:profileName,
                          alignment: TextAlign.center,
                            color: const Color(0xFF222222),
                            size: 22,
                            weight: FontWeight.w600,

                        ),
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {
                            editProfileName();
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 35.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Helvetica(
                          text:"@$userName",
                          alignment: TextAlign.center,

                            color: Colors.black,
                            size: 14,
                            weight: FontWeight.w600,

                        ),
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {
                            editUserName();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),),
          Positioned(
              top: 170.h,
              left: 205.w,
              child: IconButton(
                  onPressed: (){
                    selectImage();
                  },
                  icon: const Icon(Icons.add_a_photo_rounded,size: 30,color: Color(0xff8ADCFF),))

          ),
          Positioned(
              top: ScreenHeight / 2.20.h,
              bottom: 20.h,
              child:Container(
                padding: EdgeInsets.only(left: 12.w,right: 12.w,top: 20.h),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {

                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 8.w,top: 12.h),
                          child: Row(children: [
                            SvgPicture.asset(
                              'assets/diamond.svg',
                              height: 50.0,
                              width: 50.0,
                            ),

                            SizedBox(
                                width:
                                15.0.w), // Adjust spacing between icon and text
                            const Helvetica(
                              text:'Invite friends',
                              color: Colors.black,
                              size: 17,
                              weight: FontWeight.w500,

                            ),
                          ]),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 12.w,right: 12.w,top: 12.h,bottom: 5.h),
                        width: 315.w,
                        height: 2, // Height of the divider
                        color: const Color(0xffEEEEEE),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          OptionCon(title: 'Account info',
                              initIcon:  SvgPicture.asset(
                            'assets/account.svg',
                            height: 30.0,
                            width: 30.0,
                          ),
                              next: const PsyAcoountInfo()
                          ),
                          OptionCon(
                              title: 'Personal profile',
                              initIcon: SvgPicture.asset(
                                'assets/personal.svg',
                                height: 30.0,
                                width: 30.0,
                              ),
                              next: const PsyPersonalProfile()),
                          OptionCon(
                              title:'Message center',
                              initIcon:  SvgPicture.asset(
                                'assets/message.svg',
                                height: 30.0,
                                width: 30.0,
                              ),
                              next: const PsyMessageCenter()
                          ),
                          OptionCon(
                              title: 'Login and security',
                              initIcon: SvgPicture.asset(
                                'assets/login.svg',
                                height: 30.0,
                                width: 30.0,
                              ),
                              next:const PsyLoginSecurity(),
                          ),
                          OptionCon(
                              title:'Data and privacy',
                              initIcon: SvgPicture.asset(
                                'assets/lock-key.svg',
                                height: 30.0,
                                width: 30.0,
                              ),
                              next: const PsyDataPrivacy()),
                          OptionCon(title: "Time Slots", initIcon: SvgPicture.asset(
                            'assets/payment.svg',
                            height: 30.0,
                            width: 30.0,
                          ), next: const FixYourTimeSlot ())
                        ],
                      )
                    ],
                  ),
                ),
              ),

          ),


        ],
      ),
    );
  }
}
