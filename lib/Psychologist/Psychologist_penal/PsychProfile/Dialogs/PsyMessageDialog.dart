import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Future<void> PsyMessageDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return PopScope(
        canPop: false,
        child: AlertDialog(
          content: Container(
            height: 370,
            width: 350,
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset('assets/psymessagecclipse.svg',
                  height: 150,
                  width: 150,
                ),
                const SizedBox(height: 20,),
                const Expanded(
                  child: Helvetica(
                    text:'Your message has been sent to our team, we will work on it',
                    alignment: TextAlign.center,
                    color: Color(0xff606060),
                    size: 20,

                  ),
                ),
                const SizedBox(
                  height: 19,
                ),
                SizedBox(
                  width: 116,
                  height: 43,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: const Color(0xff8ADCFF), // Text color
                      elevation: 5, // Elevation
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // BorderRadius
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Helvetica(
                      text:'Done',
                        color: Colors.black,
                      size: 16,
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




































