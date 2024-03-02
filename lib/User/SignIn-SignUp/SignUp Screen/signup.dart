import 'package:atman/Fonts/helveticaFont.dart';
import 'package:atman/User/SignIn-SignUp/Components/buttons.dart';
import 'package:atman/User/SignIn-SignUp/Components/textfields.dart';
import 'package:atman/User/SignIn-SignUp/SignUp%20Screen/controllers.dart';
import 'package:atman/User/SignIn-SignUp/SignUp%20Screen/dialogs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                    text: "SIGN UP", size: 22, weight: FontWeight.w700),
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
                  height: 25,
                ),
                PasswordTextField(
                  text: "Re-enter your password",
                  controller: rePasswordController,
                ),
                const SizedBox(
                  height: 50,
                ),
                NormalButton(
                  text: "Sign Up",
                  onPressed: () async {
                    if (emailController.text.isEmpty ||
                        passwordController.text.isEmpty ||
                        rePasswordController.text.isEmpty) {
                      emptyFields(context);
                    } else if (passwordController.text !=
                        rePasswordController.text) {
                      passwordsDontMatch(context);
                    }
                    // else {
                    //   showDialog(
                    //       context: context,
                    //       builder: (context) {
                    //         return const Center(
                    //           child: CircularProgressIndicator(),
                    //         );
                    //       });
                    //   Map<String, dynamic> data = await register(
                    //       emailController.text, passwordController.text);
                    //   Navigator.pop(context);
                    //   if (data['status']) {
                    //     localDatabase.data['uid'] = data["uid"];
                    //     localDatabase.data['email'] = emailController.text;
                    //     localDatabase.data['password'] =
                    //         passwordController.text;
                    //     localDatabase.updateData();
                        Navigator.pushNamed(context, '/userDetails');
                      // } else {
                      //   userNotRegistered(context);
                      // }
                    // }
                  },
                ),
                const SizedBox(
                  height: 9,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Helvetica(
                        text: "Already have an account? ",
                        size: 14,
                        weight: FontWeight.w400),
                    InkWell(
                      child: const Align(
                        child: Helvetica(
                          text: "Sign In",
                          size: 14,
                          weight: FontWeight.w400,
                          color: Color(0xFFD3A3F1),
                          spacing: 0.5,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/');
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
                  text: "Sign up with Google",
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
