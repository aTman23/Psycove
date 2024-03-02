import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';

class PsychologistContainer extends StatelessWidget {
  const PsychologistContainer(
      {super.key,
      required this.imgPath,
      required this.drName,
      required this.timing});
  final String imgPath;
  final String drName;
  final String timing;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetImage(
                imgPath,
              ),
              width: 75,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Helvetica(text: drName, size: 16, weight: FontWeight.w700),
              Helvetica(text: timing, size: 12, weight: FontWeight.w400),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xFFFFAA2C),
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xFFFFAA2C),
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xFFFFAA2C),
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xFFFFAA2C),
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xFFFFAA2C),
                        size: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Helvetica(
                        text: "5.0 | 120 reviews",
                        size: 10,
                        weight: FontWeight.w400),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
