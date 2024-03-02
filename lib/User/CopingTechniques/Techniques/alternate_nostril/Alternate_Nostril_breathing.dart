import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gif/gif.dart';
import '../../../../Fonts/helveticaFont.dart';
import '../../Done_Alert.dart';
import 'Nostril_Instructions.dart';

class AlternateNostril extends StatefulWidget {
  const AlternateNostril({super.key});

  @override
  State<AlternateNostril> createState() => _AlternateNostrilState();
}

class _AlternateNostrilState extends State<AlternateNostril>with TickerProviderStateMixin {
  late GifController controller;
  Timer? _timer;
  @override
  void initState() {
    super.initState();
    controller = GifController(vsync: this,);
  }
  bool _isAnimating = false;
  bool _isDone = true;
  String text1 = 'Click Start to begin the task.';
  bool _isButtonEnabled = false;
  String _text = 'Breathe in  slowly through your left nostril ';
  bool _isActive =false;
  void _startAnimation() {
    setState(() {
      _isAnimating = true;
      _text = 'Breathe in  slowly through your left nostril ';
      _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
        if (_isAnimating) {
          setState(() {
            if (t.tick <= 5 && t.tick>=0) {
              _text = 'Breathe in  slowly through your left nostril ';
            } else if (t.tick <= 10 && t.tick>5) {
              _text = 'Breathe out slowly through your right nostril.';
            } else if (t.tick <= 15 && t.tick>10) {
              _text = 'Breathe in through your right nostril';
            }
            else if (t.tick <= 20 && t.tick>15) {
              _text = 'Switch and breathe out through your left nostril';
            }
            else if (t.tick>20) {
              _text = 'Repeat minimum 3 times';
            }else {
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
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(200),
            child: Container(
                height: 140.h,
                decoration: const BoxDecoration(
                  color:Color(0xffD3A3F1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 200.w,
                            child:  const Helvetica(text:
                              "Alternate Nostril Breathing",
                              alignment: TextAlign.center,
                                size: 18,
                                color: Colors.white,
                                weight: FontWeight.w700,

                            ),
                          ),
                          Image.asset('assets/Coping_image/Altrnate Nostril breathing.png',height: 130,width: 130,),
                        ],
                      ),
                    )
                  ],
                ))),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8.w),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Gif(
                      height: 350.h,
                      width: MediaQuery.of(context).size.width,
                      controller: controller,
                      fit: BoxFit.fill,
                      image: const AssetImage("assets/Coping_image/Nostril.gif"),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              Container(
                height: 60,
                padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 5),
                child: Helvetica(text:_isAnimating?_text:text1,
                  alignment: TextAlign.center,
                      size: 17,
                      weight: FontWeight.w500
                  ),

              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal:30.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: CircleAvatar(
                          radius:35,
                          backgroundColor:_isButtonEnabled? const Color(0xffD3A3F1):Colors.grey,
                          child: Icon(_isAnimating ? Icons.stop : Icons.play_arrow,size: 30,)),
                      onPressed:_isButtonEnabled? (){
                        if (_isAnimating) {
                          controller.reset();
                          _stopAnimation();
                          _isActive=true;
                          setState(() {
                            _isAnimating = false;
                          });
                        } else {
                          _isActive=false;
                          _startAnimation();
                          controller.repeat( period: const Duration(seconds: 22));// Adjust max to repeat more times
                          setState(() {
                            _isAnimating = true;
                          });}}
                          :null,
                    ),
                    Container(
                      width: 100.w,
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: const Color(0xffD3A3F1), // Text color
                          elevation: 2, // Elevation
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // BorderRadius
                          ),
                        ),
                        onPressed:_isDone? (){
                          setState(() {
                            _isButtonEnabled = true;
                            _isDone=false;
                            text1="Let's get start  by clicking Play button and follow  the rhythm.";
                          });
                          NostrilInstruction(context);
                        }:_isActive?(){
                          DoneAlertBox(context);
                        }:null,
                        child:  Helvetica(text:
                          _isDone?"Start":'Done',
                              color: const Color(0xff000000),
                              size: 17,
                              weight: FontWeight.bold

                        ),
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