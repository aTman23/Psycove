import 'package:flutter/material.dart';

import '../../../Fonts/helveticaFont.dart';

class ThirdPartySignInButton extends StatelessWidget {
  const ThirdPartySignInButton(
      {super.key, required this.text, required this.imagePath});
  final String text;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        fixedSize: const Size(330, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        side: const BorderSide(
          width: 1,
          color: Color(0xFFE5E7EB),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(imagePath),
          ),
          const SizedBox(
            width: 18,
          ),
          Helvetica(
            text: text,
            size: 16,
            weight: FontWeight.w600,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class NormalButton extends StatelessWidget {
  const NormalButton({super.key, required this.text, required this.onPressed});
  final String text;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: const Color(0xFF8ADCFF),
        fixedSize: const Size(330, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Helvetica(
        text: text,
        size: 16,
        weight: FontWeight.w600,
        color: Colors.white,
      ),
    );
  }
}
