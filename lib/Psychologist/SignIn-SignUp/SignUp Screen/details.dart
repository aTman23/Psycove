import 'package:atman/Fonts/helveticaFont.dart';
import 'package:atman/Psychologist/SignIn-SignUp/Components/buttons.dart';
import 'package:atman/Psychologist/SignIn-SignUp/Components/textfields.dart';
import 'package:atman/Psychologist/SignIn-SignUp/SignUp%20Screen/controllers.dart';
import 'package:flutter/material.dart';

class PsychologistDetails extends StatefulWidget {
  const PsychologistDetails({super.key});

  @override
  State<PsychologistDetails> createState() => _PsychologistDetailsState();
}

class _PsychologistDetailsState extends State<PsychologistDetails> {
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
                  height: 50,
                ),
                GeneralTextField(
                  hintText: "Enter your full name",
                  prefixIcon: Icons.mail_outline_rounded,
                  controller: nameController,
                ),
                const SizedBox(
                  height: 25,
                ),
                GeneralTextField(
                  hintText: "Phone number",
                  prefixIcon: Icons.mail_outline_rounded,
                  type: TextInputType.number,
                  controller: ageController,
                ),
                const SizedBox(
                  height: 25,
                ),
                GeneralTextField(
                  hintText: "Area of expertise",
                  prefixIcon: Icons.lock_outline_rounded,
                  controller: occupationController,
                ),
                const SizedBox(
                  height: 25,
                ),
                NormalButton(
                  text: "Submit",
                  // onPressed: () async {
                  //   if (nameController.text.isEmpty ||
                  //       genderController.text.isEmpty ||
                  //       ageController.text.isEmpty ||
                  //       occupationController.text.isEmpty ||
                  //       relationshipController.text.isEmpty ||
                  //       languageController.text.isEmpty) {
                  //     emptyFields(context);
                  //   } else {
                  //     showDialog(
                  //         context: context,
                  //         builder: (context) {
                  //           return Center(child: CircularProgressIndicator());
                  //         });
                  //     var status = await userDetail(
                  //         localDatabase.data['uid'],
                  //         nameController.text,
                  //         genderController.text,
                  //         ageController.text,
                  //         occupationController.text,
                  //         relationshipController.text,
                  //         languageController.text);
                  //     if (status && await getOtp(emailController.text)) {
                  //       localDatabase.data['name'] = nameController.text;
                  //       localDatabase.data['gender'] = genderController.text;
                  //       localDatabase.data['age'] = ageController.text;
                  //       localDatabase.data['occupation'] =
                  //           occupationController.text;
                  //       localDatabase.data['relationship'] =
                  //           relationshipController.text;
                  //       localDatabase.data['language'] =
                  //           languageController.text;
                  //       localDatabase.updateData();
                  //       // print(nameController.text);
                  //       // print(localDatabase.data['uid']);
                  //
                  //       Navigator.pop(context);
                  //       Navigator.pushNamed(context, '/otp');
                  //     } else {
                  //       Navigator.pop(context);
                  //       userNotRegistered(context);
                  //     }
                  //   }
                  // },
                  onPressed: () {
                    Navigator.pushNamed(context, '/psychologistOTPScreen');
                  },
                ),
                const SizedBox(
                  height: 9,
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
