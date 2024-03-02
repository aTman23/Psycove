import 'package:atman/Fonts/helveticaFont.dart';
import 'package:atman/Psychologist/SignIn-SignUp/Components/buttons.dart';
import 'package:atman/Psychologist/SignIn-SignUp/Components/textfields.dart';
import 'package:atman/Psychologist/SignIn-SignUp/Nickname%20Screen/controllers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PsychologistBio extends StatelessWidget {
  const PsychologistBio({super.key});

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
              children: [
                const Helvetica(
                    text: "Create Bio", size: 30, weight: FontWeight.w600),
                const SizedBox(
                  height: 20,
                ),
                GeneralTextField(
                  hintText: "Enter bio",
                  prefixIcon: CupertinoIcons.paperclip,
                  controller: nicknameController,
                ),
                const SizedBox(
                  height: 135,
                ),
                NormalButton(
                  text: "Next",
                  onPressed: () {
                    Navigator.pushNamed(context, '/psychologistHomepage');
                  },
                  // onPressed: () async {
                  //   print(nicknameController.text);
                  //   if (nicknameController.text == "") {
                  //     emptyFields(context);
                  //   } else {
                  //     loadingScreen(context);
                  //     var status = await nickname(
                  //         localDatabase.data["uid"], nicknameController.text);
                  //     Navigator.pop(context);
                  //     if (status) {
                  //       localDatabase.data["nickname"] =
                  //           nicknameController.text;
                  //       localDatabase.updateData();
                  //       Navigator.pushNamed(context, '/homepage');
                  //     } else {
                  //       emptyFields(context);
                  //     }
                  //   }
                  // },
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
