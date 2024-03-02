import 'package:atman/Fonts/helveticaFont.dart';
import 'package:atman/Psychologist/SignIn-SignUp/Components/buttons.dart';
import 'package:atman/Psychologist/SignIn-SignUp/OTP%20screen/otp_controllers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PsychologistOTPScreen extends StatefulWidget {
  const PsychologistOTPScreen({super.key});

  @override
  State<PsychologistOTPScreen> createState() => _PsychologistOTPScreenState();
}

class _PsychologistOTPScreenState extends State<PsychologistOTPScreen> {
  final box1 = FocusNode();
  final box2 = FocusNode();
  final box3 = FocusNode();
  final box4 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      appBar: AppBar(
        backgroundColor: Color(0xffF4F4F4),
        surfaceTintColor: Color(0xffF4F4F4),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: 340,
            child: Column(
              children: [
                const Helvetica(
                    text: "OTP Verification",
                    size: 26,
                    weight: FontWeight.w600),
                const SizedBox(
                  height: 7,
                ),
                const Helvetica(
                  text: "Code has been sent to +91 88***5",
                  size: 18,
                  weight: FontWeight.w400,
                  color: Color(0xFF606060),
                ),
                const SizedBox(
                  height: 130,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 60,
                      height: 70,
                      child: TextField(
                        focusNode: box1,
                        canRequestFocus: true,
                        controller: box1Controller,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        maxLength: 1,
                        onChanged: (val) {
                          if (val != '') {
                            box1.unfocus();
                            box2.requestFocus();
                          }
                        },
                        style: GoogleFonts.poppins(fontSize: 25),
                        decoration: const InputDecoration(
                          helperStyle: TextStyle(
                            fontSize: 0,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: 60,
                      height: 70,
                      child: TextField(
                        focusNode: box2,
                        canRequestFocus: true,
                        controller: box2Controller,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        maxLength: 1,
                        onChanged: (val) {
                          if (val != '') {
                            box2.unfocus();
                            box3.requestFocus();
                          } else if (val == '') {
                            box2.unfocus();
                            box1.requestFocus();
                          }
                        },
                        style: const TextStyle(fontFamily:"Helvetica",fontSize: 25),
                        decoration: const InputDecoration(
                          helperStyle: TextStyle(
                            fontSize: 0,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: 60,
                      height: 70,
                      child: TextField(
                        focusNode: box3,
                        canRequestFocus: true,
                        controller: box3Controller,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        maxLength: 1,
                        onChanged: (val) {
                          if (val != '') {
                            box3.unfocus();
                            box4.requestFocus();
                          } else if (val == '') {
                            box3.unfocus();
                            box2.requestFocus();
                          }
                        },
                        style: const TextStyle(fontFamily: "Helvetica",fontSize: 25),
                        decoration: const InputDecoration(
                          helperStyle: TextStyle(
                            fontSize: 0,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: 60,
                      height: 70,
                      child: TextField(
                        focusNode: box4,
                        canRequestFocus: true,
                        controller: box4Controller,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        maxLength: 1,
                        onChanged: (val) {
                          if (val == '') {
                            box4.unfocus();
                            box3.requestFocus();
                          }
                        },
                        style: TextStyle(fontFamily: "Helvetica",fontSize: 25),
                        decoration: const InputDecoration(
                          helperStyle: TextStyle(
                            fontSize: 0,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 135,
                ),
                NormalButton(
                  text: "Verify",
                  // onPressed: () async {
                  //   loadingScreen(context);
                  //   var otp = box1Controller.text +
                  //       box2Controller.text +
                  //       box3Controller.text +
                  //       box4Controller.text;
                  //   print(otp);
                  //   if (otp.length < 4) {
                  //     incompleteOTP(context);
                  //   } else {
                  //     var status =
                  //         await verifyOtp(localDatabase.data['uid'], otp);
                  //
                  //     Navigator.pop(context);
                  //     if (status) {
                  //       Navigator.pushNamed(context, '/nickname');
                  //     } else {
                  //       incorrectOTP(context);
                  //     }
                  //   }
                  // },
                  onPressed: () {
                    Navigator.pushNamed(context, '/psychologistNickname');
                  },
                ),
                const SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
