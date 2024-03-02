import 'package:flutter/material.dart';

import '../../../Fonts/helveticaFont.dart';

class RelaxationToolContainer extends StatelessWidget {
  const RelaxationToolContainer(
      {super.key, required this.imgPath, required this.text});
  final String imgPath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0x80B7FFE5),
      ),
      child: Row(
        children: [
          Image(
            image: AssetImage(imgPath),
            width: 150,
          ),
          Column(
            children: [
              Helvetica(
                text: text,
                size: 19,
                weight: FontWeight.w700,
              ),
              TextButton(
                onPressed: () {},
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color(0xFFFF6905),
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                child: const Helvetica(
                  text: "Get Started",
                  size: 12,
                  weight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
