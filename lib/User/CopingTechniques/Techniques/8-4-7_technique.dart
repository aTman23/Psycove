import 'dart:async';
import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gif/gif.dart';
import '../Done_Alert.dart';

class Eight47Technique extends StatefulWidget {
  const Eight47Technique({super.key});

  @override
  State<Eight47Technique> createState() => _Eight47TechniqueState();
}
class _Eight47TechniqueState extends State<Eight47Technique>with TickerProviderStateMixin {
  late GifController controller3;
  Timer? _timer;
  @override
  void initState() {
    super.initState();
    controller3 = GifController(
      vsync: this,
    );
  }
  String _text = 'Breathe out through your mouth for 8 second';
  String text = 'Click Start to Begin the task and do it minimum 3 times';
  bool _isAnimating = false;
  void _startAnimation() {
    setState(() {
      _isAnimating = true;
      _text = 'Breathe out through your mouth for 8 second';
      _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
        if (_isAnimating) {
          setState(() {
            if (t.tick <= 7 && t.tick >= 0) {
              _text = 'Breathe out through your mouth for 8 second';
            } else if (t.tick <= 11 && t.tick > 7) {
              _text = 'Breathe in through your nose for 4 second';
            } else if (t.tick <= 18 && t.tick > 11) {
              _text = 'Hold breathe  for 7 second';
            } else if (t.tick > 18) {
              _text = 'Repeat few times';
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
      child:  Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 40.h,
                          child:  const Helvetica(text:
                            "8-4-7 Technique",
                              size: 18,
                              color: Colors.white,
                              weight: FontWeight.w700,),

                        ),
                        Image.asset(
                          'assets/Coping_image/8-4-7.png',
                          height: 130,
                          width: 130,
                        ),
                      ],
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
                      controller: controller3,
                      fit: BoxFit.fill,
                      image: const AssetImage(
                        "assets/Coping_image/847.gif",
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
                          controller3.reset();
                          _stopAnimation();

                          setState(() {
                            _isAnimating = false;
                          });
                        } else {
                          _startAnimation();
                          controller3.repeat(
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
    );
  }
}
