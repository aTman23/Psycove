import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Fonts/helveticaFont.dart';
import '../../Done_Alert.dart';
import 'Affirmation_model.dart';

class AffirmationTech extends StatefulWidget {
  AffirmationTech({super.key,required this.sentances});
  @override
  State<AffirmationTech> createState() => _AffirmationTechState();
  Affirmation sentances;
}

class _AffirmationTechState extends State<AffirmationTech> {
  bool _isAnimating =true;
  bool _isDone = false;
  int _seconds = 0;
  late Timer _timer;
  bool _isTimerRunning = false;
  @override
  Widget build(BuildContext context) {
    return  PopScope(
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
                      height: 30.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 40.h,
                            child:  Helvetica(text:
                              widget.sentances.title,
                              alignment: TextAlign.center,
                                size: 18,
                                color: Colors.white,
                                weight: FontWeight.w700,

                            ),
                          ),
                          Image.asset('assets/Coping_image/Affirmation.png',height: 120,width: 130,),
                        ],
                      ),
                    )
                  ],
                ))),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(height: 20.h,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8.w),
                height: 260.h,
                width: 330.w,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 100.h,),
                    Helvetica(text:
                      widget.sentances.Santences[_seconds],
                      alignment: TextAlign.center,
                          size: 24,
                          color: const Color(0xffD3A3F1),
                          weight: FontWeight.bold),

                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Helvetica(text:_isTimerRunning ?"Speak Sentences with rhythm":"Click Play to Start",alignment: TextAlign.center,
                    size: 17,
                    weight: FontWeight.w500
                ),

              ),
              SizedBox(height: 25.h,),
              Container(
                padding: EdgeInsets.symmetric(horizontal:30.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: CircleAvatar(
                          radius:35,
                          backgroundColor:_isAnimating?const Color(0xffD3A3F1):Colors.grey,
                          child: Icon(_isTimerRunning  ?Icons.stop : Icons.play_arrow,size: 30,)),
                      onPressed:_isAnimating?_isTimerRunning ? (){
                      } :(){
                        _isDone=false;
                        _isAnimating =false;
                        _startTimer();}:null,
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
                        onPressed:_isDone?() {
                          DoneAlertBox(context);
                        }:null,
                        child: const Helvetica(text:
                          'Done',
                              color: Color(0xff000000),
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
  void _startTimer() {
    setState(() {
      _isTimerRunning = true;
      _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
        setState(() {
          _seconds++;
        });
        if (_seconds == widget.sentances.Santences.length) {
          _isAnimating =true;
          _isDone =true;
          _seconds=0;
          _stopTimer();
        }
      });
    });
  }
  void _stopTimer() {
    setState(() {
      _isTimerRunning = false;

      _timer.cancel();
    });
  }

}