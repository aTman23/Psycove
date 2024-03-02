import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailedContainer extends StatefulWidget {
  final String titles;
  final String Details;
  const DetailedContainer({super.key, required this.titles, required this.Details});

  @override
  State<DetailedContainer> createState() => _DetailedContainerState();
}

class _DetailedContainerState extends State<DetailedContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Helvetica(text:widget.titles,
            size: 18,
            weight: FontWeight.w500,
            color: const Color(0xff000000)),
        SizedBox(
          height: 10.h,
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: const Color(0xff8ADCFF).withOpacity(0.60),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
          child: Helvetica(text:widget.Details,
              alignment: TextAlign.justify,
              size: 14,
                  weight: FontWeight.normal,
                  color:const Color(0xff000000),),)
      ],
    );
  }
}
