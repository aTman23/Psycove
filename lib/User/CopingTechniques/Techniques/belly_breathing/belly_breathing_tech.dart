import 'dart:async';
import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Done_Alert.dart';
import 'bellyB_Instruction.dart';

class Bellybreathing extends StatefulWidget {
  const Bellybreathing({super.key});

  @override
  State<Bellybreathing> createState() => _BellybreathingState();
}

class _BellybreathingState extends State<Bellybreathing> {
  double _width = 50;
  double _height = 50;
  double radius = 25;
  Color _color = const Color(0xff7F8C8D);
  bool _isButtonEnabled = false;
  String _text = 'Breathe in  slowly through your nose for 4 count';
  String text1 = 'Click Start to begin the task.';
  bool _isAnimating = false;
  bool _isDone = true;
  bool _isActive = false;
  void _startAnimation() {
    setState(() {
      _isAnimating = true;
      _width = 100;
      _height = 100;
      radius = 50;
      _color = const Color(0xffD3A3F1);
      _text = 'Breathe in  slowly through your nose for 4 count';
      Future.delayed(const Duration(seconds: 6), () {
        if (_isAnimating) {
          setState(() {
            _width = 50;
            _height = 50;
            radius = 25;
            _color = Colors.blue;
            _text = 'Breathe out slowly through mouth for 4 count';
          });
        }
      });
      Future.delayed(const Duration(seconds: 12), () {
        if (_isAnimating) {
          _startAnimation();
        }
      });
    });
  }

  void _stopAnimation() {
    setState(() {
      _isAnimating = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(200),
              child: Container(
                  height: 140.h,
                  decoration: const ShapeDecoration(
                    color: Color(0xffD3A3F1),
                    shape: RoundedRectangleBorder(),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 14.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 40.h,
                              child: Container(
                                alignment: Alignment.center,
                                height: 27.h,
                                child:  const Helvetica(text:
                                  "Belly Breathing Technique",
                                    size: 18,
                                    color: Colors.white,
                                    weight: FontWeight.w700,

                                ),
                              ),
                            ),
                            Image.asset(
                              'assets/Coping_image/Belly Breathing.png',
                              height: 130,
                              width: 95,
                            ),
                          ],
                        ),
                      )
                    ],
                  ))),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.w),
                  height: 260.h,
                  width: 330.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AnimatedContainer(
                        width: _width,
                        height: _height,
                        decoration: BoxDecoration(
                            color: _color,
                            border: Border.all(
                                color: const Color(0xffD3A3F1), width: 5),
                            borderRadius: BorderRadius.circular(radius)),
                        duration: const Duration(seconds: 6),
                        child: const Text(""),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Helvetica(text:
                    _isAnimating ? _text : text1,
                      size: 17,
                      weight: FontWeight.w500,

                    alignment: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: CircleAvatar(
                            radius: 35,
                            backgroundColor: _isButtonEnabled
                                ? const Color(0xffD3A3F1)
                                : Colors.grey,
                            child: Icon(
                              _isAnimating ? Icons.stop : Icons.play_arrow,
                              size: 30,
                            )),
                        onPressed: _isButtonEnabled
                            ? _isAnimating
                            ? () {
                          _isActive = true;
                          _stopAnimation();
                        }
                            : () {
                          _isActive = false;
                          _startAnimation();
                        }
                            : null,
                      ),
                      Container(
                        width: 100.w,
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor:
                            const Color(0xffD3A3F1), // Text color
                            elevation: 2, // Elevation
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(10), // BorderRadius
                            ),
                          ),
                          onPressed: _isDone
                              ? () {
                            setState(() {
                              _isButtonEnabled = true;
                              _isDone = false;
                              text1 =
                              "Let's get start  by clicking Play button and follow  the rhythm of circle. ";
                            });
                            BellyBInstruction(context);
                          }
                              : _isActive
                              ? () {
                            DoneAlertBox(context);
                          }
                              : null,
                          child: Helvetica(text:
                            _isDone ? "Start" : 'Done',
                                color: const Color(0xff000000),
                                size: 16,
                                weight: FontWeight.bold),

                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}