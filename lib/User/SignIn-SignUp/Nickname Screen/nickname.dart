import 'package:atman/Fonts/helveticaFont.dart';
import 'package:atman/User/SignIn-SignUp/Components/buttons.dart';
import 'package:atman/User/SignIn-SignUp/Components/textfields.dart';
import 'package:atman/User/SignIn-SignUp/Nickname%20Screen/controllers.dart';
import 'package:atman/User/SignIn-SignUp/SignUp%20Screen/dialogs.dart';
import 'package:flutter/material.dart';

import '../Backend/backendScripts.dart';

class NickName extends StatelessWidget {
  const NickName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      appBar: AppBar(
        surfaceTintColor: const Color(0xffF4F4F4),
        backgroundColor: const Color(0xffF4F4F4),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: 330,
            child: Column(
              children: [
                const Helvetica(
                    text: "Nickname", size: 30, weight: FontWeight.w600),
                const SizedBox(
                  height: 7,
                ),
                const Helvetica(
                  text: "Start your journey at Atman with nickname",
                  size: 20,
                  weight: FontWeight.w400,
                  color: Color(0xFF606060),
                ),
                const SizedBox(
                  height: 130,
                ),
                GeneralTextField(
                  hintText: "Enter your nickname",
                  controller: nicknameController,
                ),
                const SizedBox(
                  height: 135,
                ),
                NormalButton(
                  text: "Next",
                  onPressed: () async {
                    // print(nicknameController.text);
                    if (nicknameController.text == "") {
                      emptyFields(context);
                    }
                    // else {
                    //   loadingScreen(context);
                    //   var status = await nickname(
                    //       localDatabase.data["uid"], nicknameController.text);
                    //   Navigator.pop(context);
                    //   if (status) {
                    //     localDatabase.data["nickname"] =
                    //         nicknameController.text;
                    //     localDatabase.updateData();
                        Navigator.pushNamed(context, '/homepage');
                    //   } else {
                    //     emptyFields(context);
                    //   }
                    // }
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
