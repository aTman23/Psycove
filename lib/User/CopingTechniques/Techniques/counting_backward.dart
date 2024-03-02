import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Done_Alert.dart';

class CountingBackward extends StatefulWidget {
  const CountingBackward({super.key});

  @override
  State<CountingBackward> createState() => _CountingBackwardState();
}

class _CountingBackwardState extends State<CountingBackward> {
  bool _isAnimating =true;
  bool _isDone = false;
  int _seconds = 25;
  late Timer _timer;
  bool _isTimerRunning = false;
  int _selectedTime = 25;
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
                            child:   Text(
                              "Counting Backward",
                              style: GoogleFonts.inder(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,

                              ),
                            ),
                          ),
                          Image.asset('assets/Coping_image/Counting Backward.png',height: 130,width: 130,),
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
                  children: [Row(
                    children: [
                      Text("Select Count Length" ,style: GoogleFonts.inder(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),),
                      const Spacer(),
                      DropdownButton<int>(
                        value: _selectedTime,
                        onChanged: _isTimerRunning ? null : _onTimeChanged,
                        items: const [
                          DropdownMenuItem<int>(
                            value: 25,
                            child: Text('25 count'),
                          ),
                          DropdownMenuItem<int>(
                            value: 50,
                            child: Text('50 count'),
                          ),
                          DropdownMenuItem<int>(
                            value: 100,
                            child: Text('100 count'),
                          ),
                        ],
                      ),

                    ],
                  ),
                    SizedBox(height: 100.h,),
                    Text(
                      ' $_seconds',
                      style:GoogleFonts.inter(
                          fontSize: 24,
                          color: const Color(0xffD3A3F1),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Text(_isTimerRunning ?"Count Backward with Numbers":"Click Play to Start",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inder(
                      fontSize: 17,
                      fontWeight: FontWeight.w500
                  ),),

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
                        child: Text(
                          'Done',
                          style: GoogleFonts.inder(
                              color: Color(0xff000000),
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
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
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        setState(() {
          _seconds--;
        });
        if (_seconds == 0) {
          _isAnimating =true;
          _isDone =true;
          _seconds=_selectedTime;
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
  void _onTimeChanged(int? value) {
    if (value != null) {
      setState(() {
        _selectedTime = value;
        _seconds=_selectedTime;
      });
    }
  }
}
