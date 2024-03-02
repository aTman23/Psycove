
import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final List<String> texts = [
  "Sit Comfortably and use your right thumb to close  your right nostril .",
  "Breathe in  slowly through your left nostril .",
  "Close your left nostril with your right ring finger and release your thumb from your right nostril.",
  "Breathe out slowly through your right nostril.",
  "Breathe in through your right nostril",
  "Switch and breathe out through your left nostril",
  "Repeat minimum 3 times for benefit.",
];
Future<void> NostrilInstruction(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return PopScope(
        canPop: false,
        child: AlertDialog(
          content: Container(
            height: 500.h,
            padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Center(
                  child:Helvetica(text: "Pre-Instructions",
                      size: 20,
                      decoration: TextDecoration.underline,
                      weight: FontWeight.bold,
                      color: Color(0xffD3A3F1)
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: texts.length,
                      itemBuilder:(context, index){
                        return  Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          child:RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "${index+1}.",
                                  style: const TextStyle(
                                    fontFamily: "Helvetica",
                                    fontSize: 20, // Adjust the font size as needed
                                    fontWeight: FontWeight.bold, // Adjust the font weight as needed
                                    color: Colors.black, // Adjust the color as needed
                                  ),
                                ),
                                TextSpan(
                                  text: texts[index],
                                  style: const TextStyle(fontFamily: "Helvetica",
                                    fontSize: 18,
                                    color: Colors.black,// Adjust the font size as needed
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      } ),
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  width: 116,
                  height: 43,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: const Color(0xffD3A3F1), // Text color
                      elevation: 5, // Elevation
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // BorderRadius
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Helvetica(text:
                      'Close',
                        color: Colors.black,
                        size: 18,
                        weight: FontWeight.w800,

                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}