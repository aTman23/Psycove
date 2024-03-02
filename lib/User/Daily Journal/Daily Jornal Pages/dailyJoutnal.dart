import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import '../../SignIn-SignUp/Components/buttons.dart';

class DailyJournal extends StatelessWidget {
  const DailyJournal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              child: Image(
                image: AssetImage(
                    "assets/images/Screenshot_2024-01-13_164019-removebg-preview.png"),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Helvetica(
              text: "Daily Journal",
              size: 27,
              weight: FontWeight.w600,
              color: Color(0xFFD3A3F1),
              decoration: TextDecoration.underline,
            ),
            const SizedBox(
              height: 10,
            ),
            const Helvetica(
                text: "Taking the time to reflect on your",
                size: 16,
                weight: FontWeight.w500),
            const Helvetica(
                text: "thoughts and feelings is a powerful",
                size: 16,
                weight: FontWeight.w500),
            const Helvetica(
                text: "step towards understanding",
                size: 16,
                weight: FontWeight.w500),
            const Helvetica(
                text: "yourself better.", size: 16, weight: FontWeight.w500),
            const SizedBox(
              height: 55,
            ),
            NormalButton(
                text: "Next",
                onPressed: () {
                  Navigator.pushNamed(context, '/dailyJournalMain');
                }),
          ],
        ),
      ),
    );
  }
}
