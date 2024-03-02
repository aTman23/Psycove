import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';

class RibbonButton extends StatelessWidget {
  const RibbonButton(
      {super.key,
      required this.imagePath,
      required this.text,
      required this.onPressed});
  final String imagePath;
  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 1.5,
              )
            ], color: Color(0xFFD3A3F1), shape: BoxShape.circle),
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image(
                  image: AssetImage(imagePath),
                  width: 45,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Helvetica(
            text: text,
            size: 12,
            weight: FontWeight.w600,
          )
        ],
      ),
    );
  }
}
