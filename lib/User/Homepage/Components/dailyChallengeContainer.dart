import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DailyChallengeContainer extends StatelessWidget {
  const DailyChallengeContainer(
      {super.key,
      required this.heading,
      required this.content,
      required this.imgPath,
      required this.containerColor,
      required this.onPressed});
  final String heading;
  final String content;
  final String imgPath;
  final Color containerColor;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Helvetica(
                        text: heading, size: 19, weight: FontWeight.w600),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 200,
                      child: Helvetica(
                        text:content,
                        overflow: TextOverflow.ellipsis,
                        alignment: TextAlign.left,
                        size: 11,
                          maxlines: 3,
                          weight: FontWeight.w600,
                              color: Colors.white),
                    ),


                    const SizedBox(
                      height: 15,
                    ),
                    const Row(
                      children: [
                        Image(
                          image: AssetImage("assets/images/playcircle.png"),
                        ),
                        Helvetica(
                          text: " START",
                          size: 15,
                          weight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 150,
              alignment: Alignment.centerLeft,
              // margin: EdgeInsets.only(left: 40),
              child: Image(
                image: AssetImage(imgPath),
              ),
            )
          ],
        ),
      ),
    );
  }
}
