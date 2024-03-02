import 'package:atman/User/SignIn-SignUp/PhoneSignIn%20Screen/controllers.dart';
import 'package:flutter/material.dart';

import '../../../Fonts/helveticaFont.dart';
import '../Components/buttons.dart';
import '../Components/textfields.dart';

class PhoneSignIn extends StatelessWidget {
  const PhoneSignIn({super.key});

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
            width: 330,
            child: Column(
              children: [
                const Helvetica(
                    text: "Sign In", size: 26, weight: FontWeight.w600),
                const SizedBox(
                  height: 7,
                ),
                const Helvetica(
                  text: "Enter Your Mobile Number To Get The OTP",
                  size: 18,
                  weight: FontWeight.w400,
                  color: Color(0xFF606060),
                ),
                const SizedBox(
                  height: 130,
                ),
                GeneralTextField(
                  hintText: "Enter Phone Number",
                  prefixIcon: Icons.phone,
                  type: TextInputType.number,
                  controller: phoneController,
                ),
                const SizedBox(
                  height: 135,
                ),
                NormalButton(
                  text: "Next",
                  onPressed: () {
                    Navigator.pushNamed(context, '/otp');
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
