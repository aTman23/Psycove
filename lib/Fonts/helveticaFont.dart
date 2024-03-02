import 'package:flutter/cupertino.dart';

class Helvetica extends StatelessWidget {
  const Helvetica(
      {super.key,
      required this.text,
      this.size = 14,
      this.weight = FontWeight.normal,
      this.spacing = 1,
      this.color,
      this.alignment = TextAlign.center,
      this.decoration,
      this.maxlines = 1,
      this.overflow,
      this.decorationColor,
      this.softwrap});

  final String text;
  final double? size;
  final FontWeight? weight;
  final double? spacing;
  final Color? color;
  final TextAlign? alignment;
  final TextDecoration? decoration;
  final int? maxlines;
  final TextOverflow? overflow;
  final Color? decorationColor;
  final bool? softwrap;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: alignment,
      style: TextStyle(
        fontFamily: "Helvetica",
        fontSize: size,
        fontWeight: weight,
        decoration: decoration,
        color: color,
        decorationColor: decorationColor,
        wordSpacing: spacing,
      ),
      softWrap: softwrap,
      overflow: overflow,
      maxLines: maxlines,

    );
  }
}
