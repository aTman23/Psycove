import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Fonts/helveticaFont.dart';
import '../model/quistion_model.dart';
import 'QuisComponent/QuisContainer.dart';
import 'result_screen.dart';
class QuistionPage extends StatefulWidget {
  const QuistionPage({super.key});

  @override
  State<QuistionPage> createState() => _QuistionPageState();
}
class _QuistionPageState extends State<QuistionPage> {
  List view = [];
  int score = 0;
  int index = 0;
  bool isPrassed = false;
  String selectedOtion ="";
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
          backgroundColor: const Color(0xffF4F4F4),
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(200),
            child: Container(
              height: 200.h,
              decoration: const ShapeDecoration(
                color: Color(0xffD3A3F1),
                shape: RoundedRectangleBorder(
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/self_test_img/qa1.svg',height: 120.h,width: 120.w,),
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    child:  const Helvetica(text:
                    "Few Steps ahead to your mental health",
                      size: 17,
                      weight: FontWeight.w500,

                    ),
                  ),
                ],
              ),),),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.only(left: 12.w, top: 10.h, right: 12.w),
                  margin: EdgeInsets.only(top: 10.h),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30)),
                  child:  Helvetica(
                      text:"${index + 1}.${quistion[index].title}",
                      size: 18,
                      weight: FontWeight.w500,
                      alignment: TextAlign.left,
                      maxlines: 10,
                      color: Colors.black),),
              Container(
                margin: EdgeInsets.only(top: 15.h,left: 10.w,right: 10.w),
                child: Column(
                  children: [
                    GestureDetector(
                        onTap: isPrassed
                            ? () {}
                            : () {
                          setState(() {
                            isPrassed = true;
                            setState(() {
                              selectedOtion =quistion[index].Option[0];
                            });
                          });
                          score += 4;
                        },
                        child: QuizContainer(Quis: '${quistion[index].Option.toList()[0]}', selectOpt: selectedOtion, pressed: isPrassed, alfabet: 'A' ,)
                    ),
                    GestureDetector(
                        onTap: isPrassed
                            ? () {}
                            : () {
                          setState(() {
                            isPrassed = true;
                            setState(() {
                              selectedOtion =quistion[index].Option[1];
                            });
                          });
                          score += 3;
                        },
                        child: QuizContainer(
                          Quis: '${quistion[index].Option.toList()[1]}',
                          selectOpt: selectedOtion,
                          pressed: isPrassed, alfabet: 'B' ,)
                    ),
                    GestureDetector(
                        onTap: isPrassed
                            ? () {}
                            : () {
                          setState(() {
                            isPrassed = true;
                            setState(() {
                              selectedOtion =quistion[index].Option[2];
                            });
                          });
                          score += 2;
                        },
                        child: QuizContainer(
                          Quis: '${quistion[index].Option.toList()[2]}',
                          selectOpt: selectedOtion,
                          pressed: isPrassed,
                          alfabet: 'C' ,)
                    ),
                    GestureDetector(
                        onTap: isPrassed
                            ? () {}
                            : () {
                          setState(() {
                            isPrassed = true;
                            setState(() {
                              selectedOtion =quistion[index].Option[3];
                            });
                          });
                          score += 1;
                        },
                        child: QuizContainer(
                          Quis: '${quistion[index].Option.toList()[3]}',
                          selectOpt: selectedOtion,
                          pressed: isPrassed,
                          alfabet: 'D' ,)
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                width: 295.w,
                margin: EdgeInsets.only(bottom: 20.w),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // BorderRadius
                    ),
                    foregroundColor: Colors.white,
                    backgroundColor: const Color(0xffD3A3F1),
                  ), // Text color
                  onPressed: isPrassed
                      ? index + 1 == quistion.length
                      ? () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ResultScreen(score,)));
                  } : () {
                    setState(() {
                      index++;
                      isPrassed = false;
                    });
                  }: null,
                  child:Helvetica(
                    text:index + 1 == quistion.length
                        ? "See Result"
                        : "Next Question",
                    size: 20,
                  ),
                  ),
              ),
            ],
          )
      ),
    );
  }
}
