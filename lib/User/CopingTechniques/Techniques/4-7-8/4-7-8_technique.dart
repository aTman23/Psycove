import 'dart:async';
import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gif/gif.dart';

import '../../Done_Alert.dart';

class Four78Technique extends StatefulWidget {
  const Four78Technique({super.key});

  @override
  State<Four78Technique> createState() => _Four78TechniqueState();
}

class _Four78TechniqueState extends State<Four78Technique>
    with TickerProviderStateMixin {
  late GifController controller2;
  Timer? _timer;
  @override
  void initState() {
    super.initState();
    controller2 = GifController(
      vsync: this,
    );
  }

  String _text = 'Breathe in through your nose for 4 second';
  String text = 'Click Start to Begin the task and do it minimum 3 times';
  bool _isAnimating = false;
  void _startAnimation() {
    setState(() {
      _isAnimating = true;
      _text = 'Breathe in through your nose for 4 second';
      _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
        if (_isAnimating) {
          setState(() {
            if (t.tick <= 4 && t.tick >= 0) {
              _text = 'Breathe in through your nose for 4 second';
            } else if (t.tick <= 11 && t.tick > 4) {
              _text = 'Hold breathe for 7 second';
            } else if (t.tick <= 19 && t.tick > 11) {
              _text = 'Breathe out slowly through your mouth for 8 second';
            } else if (t.tick > 19) {
              _text = 'Repeat minimum 3 times';
            } else {
              t.cancel();
            }
          });
        } else {
          t.cancel();
        }
      });
    });
  }

  void _stopAnimation() {
    setState(() {
      _isAnimating = false;
      _timer?.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: Color(0xffF9F7F0),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 40.h,
                            child:  const Helvetica(text:
                              "4-7-8 Technique",
                                size: 18,
                                color: Colors.white,
                                weight: FontWeight.w700,

                            ),
                          ),
                          Image.asset(
                            'assets/Coping_image/4-7-8.png',
                            height: 130,
                            width: 130,
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
                    Gif(
                      height: 300,
                      width: 300,
                      controller: controller2,
                      fit: BoxFit.fill,
                      image: const AssetImage(
                        "assets/Coping_image/478.gif",
                      ),
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
                  _isAnimating ? _text : text,
                  alignment: TextAlign.center,
                      size: 17, weight: FontWeight.w500),

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
                          backgroundColor: const Color(0xffD3A3F1),
                          child: Icon(
                            _isAnimating ? Icons.stop : Icons.play_arrow,
                            size: 30,
                          )),
                      onPressed: () {
                        if (_isAnimating) {
                          controller2.reset();
                          _stopAnimation();

                          setState(() {
                            _isAnimating = false;
                          });
                        } else {
                          _startAnimation();
                          controller2.repeat(
                              period: const Duration(
                                  seconds:
                                  19)); // Adjust max to repeat more times
                          setState(() {
                            _isAnimating = true;
                          });
                        }
                      },
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
                        onPressed: _isAnimating
                            ? null
                            : () {
                          DoneAlertBox(context);
                        },
                        child: const Helvetica(text:
                          'Done',
                              color: Color(0xff000000),
                              size: 16,

                              weight
                                  : FontWeight.bold),

                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
