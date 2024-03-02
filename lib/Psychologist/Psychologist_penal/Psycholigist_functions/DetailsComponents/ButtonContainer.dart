import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonContainer extends StatelessWidget {
  final String Bname;
  const ButtonContainer({super.key, required this.Bname});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 35,
      width: 72,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xff8ADCFF), // Border color
          width: 2, // Border width
        ),
      ),
      child: Helvetica(
        text:Bname,

        color: Colors.black,
          size: 15,
          weight: FontWeight.w500,

      ),
    );
  }
}
