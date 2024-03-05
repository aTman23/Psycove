import 'package:flutter/material.dart';

import '../../../../Fonts/helveticaFont.dart';

class QuizContainer extends StatefulWidget {
  bool pressed;
  final String Quis;
  final String selectOpt;
  final String alfabet;
  QuizContainer({super.key, required this.Quis, required this.selectOpt, required this.pressed, required this.alfabet});

  @override
  State<QuizContainer> createState() => _QuizContainerState();
}

class _QuizContainerState extends State<QuizContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,),
      margin: EdgeInsets.symmetric(vertical: 12),
      alignment: Alignment.center,
      height: 50,
      width: 300,
      decoration: BoxDecoration(
          color: widget.pressed? widget.selectOpt==widget.Quis
              ? const Color(0xffD3A3F1)
              :const Color(0xffFFFFFF)
              :const Color(0xffFFFFFF),
          border: Border.all(
              color: const Color(0xffD3A3F1),
              width: 2
          ),

          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: const Color(0xffD3A3F1),
            radius: 17,
            child:
            Helvetica(
                text:widget.alfabet,
                size: 20,
                weight: FontWeight.w500,
                color: Colors.white),
          ),
          SizedBox(width: 10,),
          Helvetica(
              text:'${widget.Quis}',
              size: 18,
              weight: FontWeight.w500,
              color: Colors.black),
        ],
      ),
    );
  }
}
