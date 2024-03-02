import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../model/quistion_model.dart';
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
  final PageController _controller = PageController(initialPage: 0);
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
                    height: 14.h,
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
          body: PageView.builder(
              controller: _controller,
              itemCount: quistion.length,
              onPageChanged: (page) {
                setState(() {
                  isPrassed = false;
                });
              },
              itemBuilder: (context, index){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: 12.w, top: 10.h, right: 12.w),
                        margin: EdgeInsets.only(top: 10.h),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(30)),
                        child: Helvetica(
                          text:"${index + 1}.${quistion[index].title}",
                          size: 18,

                              weight: FontWeight.w500,
                              color: Colors.black),
                        ),
                    for (int i = 0; i < quistion[index].Option.length; i++)
                      Container(
                        margin: EdgeInsets.only(top: 15.h,left: 10.w,right: 10.w),
                        child: GestureDetector(
                          onTap: isPrassed
                              ? () {}
                              : () {
                            setState(() {
                              isPrassed = true;
                              setState(() {
                                selectedOtion =quistion[index].Option[i];
                              });
                            });
                            if (quistion[index]
                                .Option[i]==quistion[index]
                                .Option[0]) {
                              score += 4;
                            } else if (quistion[index]
                                .Option[i]==quistion[index]
                                .Option[1]) {
                              score += 3;
                            }
                            else if (quistion[index]
                                .Option[i]==quistion[index]
                                .Option[2]) {
                              score += 2;
                            }
                            else {
                              score += 1;
                            }
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 300,
                            decoration: BoxDecoration(
                                color: isPrassed ? selectedOtion == quistion[index].Option[i]
                                    ? const Color(0xffD3A3F1)
                                    :const Color(0xffFFFFFF)
                                    :const Color(0xffFFFFFF),
                                border: Border.all(
                                    color: const Color(0xffD3A3F1),
                                    width: 2
                                ),

                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Helvetica(
                              text:'${quistion[index].Option.toList()[i]}',
                              size: 18,
                               weight: FontWeight.w500,
                                  color: Colors.black),

                          ),
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
                        }
                            : () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 750),
                            curve: Curves.decelerate,
                          );
                          setState(() {
                            isPrassed = false;
                          });
                        }: null,
                        child: Helvetica(
                          text:index + 1 == quistion.length
                              ? "See Result"
                              : "Next Question",
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                );
              })

      ),
    );
  }
}