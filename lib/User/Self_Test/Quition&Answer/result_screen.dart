import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Fonts/helveticaFont.dart';
class ResultScreen extends StatefulWidget {
  final int score;
  const ResultScreen(this.score, {Key? key}) : super(key: key);
  @override
  State<ResultScreen> createState() => _ResultScreenState();
}
class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
       backgroundColor: const Color(0xffF4F4F4),
        body: Center(
          child: Container(
            height: 363.h,
            width: 325.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffD3A3F1).withOpacity(0.2),
              border: Border.all(color: Colors.grey)
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 24.h,),
                Container(
                  margin: EdgeInsets.only(right: 10.w),
                    child: Image.asset("assets/self_test_img/boy2.png")),
                SizedBox(height: 12.h,),
                Helvetica(text:"Congratulations !",
                  weight: FontWeight.w600,
                  size: 28,
                ),
                SizedBox(height: 12.h,),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Helvetica(text:"Your score is ${widget.score} you doing good, keep get going in your mental well being journey.",
                    alignment: TextAlign.center,
                    weight: FontWeight.w500,
                    size: 19,
                    maxlines: 20,
                  ),
                ),
                SizedBox(height: 10.h,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24.w,),
                  width: 300.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: const Color(0xffD3A3F1), // Text color
                      elevation: 2,
                      shadowColor:  const Color(0xff803a9f),// Elevation
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // BorderRadius
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/homepage');
                    },
                    child: const Helvetica(
                      text:'Done',
                      color: Colors.white,
                      size: 16,
                      weight: FontWeight.w600,
                    ),
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
