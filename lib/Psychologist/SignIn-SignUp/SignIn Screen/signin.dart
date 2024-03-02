import 'package:atman/Psychologist/SignIn-SignUp/Components/buttons.dart';
import 'package:atman/Psychologist/SignIn-SignUp/Components/textfields.dart';
import 'package:atman/Psychologist/SignIn-SignUp/SignIn%20Screen/controllers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Fonts/helveticaFont.dart';

class PsychologistSignIn extends StatefulWidget {
  const PsychologistSignIn({super.key});

  @override
  State<PsychologistSignIn> createState() => _PsychologistSignInState();
}

class _PsychologistSignInState extends State<PsychologistSignIn> {
  bool pressed = true;
  IconData icon = CupertinoIcons.eye_slash;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      appBar: AppBar(
        surfaceTintColor: Color(0xffF4F4F4),
        backgroundColor: Color(0xffF4F4F4),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: 330,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Helvetica(
                    text: "SIGN IN", size: 22, weight: FontWeight.w700),
                const SizedBox(
                  height: 38,
                ),
                GeneralTextField(
                  hintText: "Enter your email",
                  prefixIcon: Icons.email_outlined,
                  type: TextInputType.emailAddress,
                  controller: emailController,
                ),
                const SizedBox(
                  height: 25,
                ),
                PasswordTextField(
                  text: "Enter your password",
                  controller: passwordController,
                ),
                const SizedBox(
                  height: 15,
                ),
                const InkWell(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Helvetica(
                      text: "Forgot Password?",
                      size: 14,
                      weight: FontWeight.w400,
                      color: Color(0xFF8ADCFF),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                NormalButton(
                  text: "Sign In",
                  // onPressed: () async {
                  //   if (emailController.text.isEmpty ||
                  //       passwordController.text.isEmpty) {
                  //     emptyFields(context);
                  //   } else {
                  //     showDialog(
                  //       context: context,
                  //       builder: (context) => const Center(
                  //         child: CircularProgressIndicator(),
                  //       ),
                  //     );
                  //     Map<String, dynamic> status = await login(
                  //         emailController.text, passwordController.text);
                  //     print(status);
                  //     Navigator.pop(context);
                  //     if (status['status'] == false) {
                  //       signInInvalidCredentials(context);
                  //     } else {
                  //       localDatabase.data['uid'] = status['uid'];
                  //       localDatabase.data['nickname'] = status['nickname'];
                  //       localDatabase.updateData();
                  //       Navigator.pushNamed(context, '/homepage');
                  //     }
                  //   }
                  // },
                  onPressed: () {
                    Navigator.pushNamed(context, '/psychologistHomepage');
                  },
                ),
                const SizedBox(
                  height: 9,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Helvetica(
                        text: "Don't have an account? ",
                        size: 14,
                        weight: FontWeight.w400),
                    InkWell(
                      child: const Align(
                        child: Helvetica(
                          text: "Sign Up",
                          size: 14,
                          weight: FontWeight.w400,
                          color: Color(0xFF8ADCFF),
                          spacing: 0.5,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, '/psychologistSignUp');
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 54,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      width: 150,
                      height: 10,
                      child: Divider(
                        thickness: 1,
                        indent: 20,
                        endIndent: 10,
                        color: Color(0x33221F1F),
                      ),
                    ),
                    Helvetica(
                      text: "OR",
                      size: 16,
                      weight: FontWeight.w400,
                      color: Color(0xFFA1A8B0),
                    ),
                    SizedBox(
                      width: 150,
                      height: 10,
                      child: Divider(
                        thickness: 1,
                        endIndent: 20,
                        indent: 10,
                        color: Color(0x33221F1F),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 41,
                ),
                const ThirdPartySignInButton(
                  text: "Sign in with Google",
                  imagePath: "assets/images/Google.png",
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
