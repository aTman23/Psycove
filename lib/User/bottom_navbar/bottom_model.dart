import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SVGIcon extends StatelessWidget {
  final String path;
  final double width;
  final double height;

  SVGIcon({required this.path, this.width = 24.0, this.height = 24.0});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      width: width,
      height: height,
    );
  }
}
