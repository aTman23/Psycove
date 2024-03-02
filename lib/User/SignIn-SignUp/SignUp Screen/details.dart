import 'package:atman/Fonts/helveticaFont.dart';
import 'package:atman/User/SignIn-SignUp/Components/buttons.dart';
import 'package:atman/User/SignIn-SignUp/Components/dropdownmenu.dart';
import 'package:atman/User/SignIn-SignUp/Components/textfields.dart';
import 'package:atman/User/SignIn-SignUp/SignUp%20Screen/dialogs.dart';
import 'package:atman/User/SignIn-SignUp/SignUp%20Screen/controllers.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
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
                    text: "USER DETAILS", size: 22, weight: FontWeight.w700),
                const SizedBox(
                  height: 50,
                ),
                GeneralTextField(
                  hintText: "Your Name",
                  prefixIcon: Icons.mail_outline_rounded,
                  controller: nameController,
                ),
                const SizedBox(
                  height: 25,
                ),
                DropDownMenu(
                  text: "Gender",
                  icon: Icons.mail_outline_rounded,
                  controller: genderController,
                  list: const [
                    DropdownMenuEntry(
                        value: "Male",
                        label: "Male",
                        leadingIcon: Icon(Icons.male_rounded)),
                    DropdownMenuEntry(
                        value: "Female",
                        label: "Female",
                        leadingIcon: Icon(Icons.female_rounded)),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                GeneralTextField(
                  hintText: "Age",
                  prefixIcon: Icons.mail_outline_rounded,
                  type: TextInputType.number,
                  controller: ageController,
                ),
                const SizedBox(
                  height: 25,
                ),
                GeneralTextField(
                  hintText: "Occupation",
                  prefixIcon: Icons.lock_outline_rounded,
                  controller: occupationController,
                ),
                const SizedBox(
                  height: 25,
                ),
                DropDownMenu(
                  text: "Relationship Status",
                  icon: Icons.mail_outline_rounded,
                  controller: relationshipController,
                  list: const [
                    DropdownMenuEntry(value: "Single", label: "Single"),
                    DropdownMenuEntry(value: "Married", label: "Married"),
                    DropdownMenuEntry(value: "Divorced", label: "Divorced"),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                DropDownMenu(
                  text: "Select Language",
                  icon: Icons.language_rounded,
                  controller: languageController,
                  list: const [
                    DropdownMenuEntry(value: "English", label: "English"),
                    DropdownMenuEntry(value: "Hindi", label: "Hindi"),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                NormalButton(
                  text: "Submit",
                  onPressed: () async {
                    if (nameController.text.isEmpty ||
                        genderController.text.isEmpty ||
                        ageController.text.isEmpty ||
                        occupationController.text.isEmpty ||
                        relationshipController.text.isEmpty ||
                        languageController.text.isEmpty) {
                      emptyFields(context);
                    }
                    // else {
                    //   showDialog(
                    //       context: context,
                    //       builder: (context) {
                    //         return Center(child: CircularProgressIndicator());
                    //       });
                    //   var status = await userDetail(
                    //       localDatabase.data['uid'],
                    //       nameController.text,
                    //       genderController.text,
                    //       ageController.text,
                    //       occupationController.text,
                    //       relationshipController.text,
                    //       languageController.text);
                    //   if (status && await getOtp(emailController.text)) {
                    //     localDatabase.data['name'] = nameController.text;
                    //     localDatabase.data['gender'] = genderController.text;
                    //     localDatabase.data['age'] = ageController.text;
                    //     localDatabase.data['occupation'] =
                    //         occupationController.text;
                    //     localDatabase.data['relationship'] =
                    //         relationshipController.text;
                    //     localDatabase.data['language'] =
                    //         languageController.text;
                    //     localDatabase.updateData();
                    //     // print(nameController.text);
                    //     // print(localDatabase.data['uid']);
                    //
                    //     Navigator.pop(context);
                        Navigator.pushNamed(context, '/otp');
                    //   } else {
                    //     Navigator.pop(context);
                    //     userNotRegistered(context);
                    //   }
                    // }
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
