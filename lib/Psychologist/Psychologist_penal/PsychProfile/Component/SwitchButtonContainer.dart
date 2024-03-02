import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Fonts/helveticaFont.dart';

class SwitchButtonContainer extends StatefulWidget {
  final String Text;
  bool Switchbutton;
   SwitchButtonContainer({super.key, required this.Text, required this.Switchbutton,});

  @override
  State<SwitchButtonContainer> createState() => _SwitchButtonContainerState();
}

class _SwitchButtonContainerState extends State<SwitchButtonContainer> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 210.h,
          child: Helvetica(
            text:widget.Text,

              color: const Color(0xff606060),
              size: 15,
              weight: FontWeight.w400,
            ),

        ),
        Switch(
          value: widget.Switchbutton,
          onChanged: (value) {
            setState(() {
             widget.Switchbutton = value;
            });
          },
          activeColor: Colors.green,
          inactiveTrackColor: Colors.grey,
          // Set the color when the switch is on
        ),
      ],
    ) ;
  }
}
