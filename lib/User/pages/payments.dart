import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../Psycologist_nfo/dialogs/pay_dialog.dart';

class MyPayment extends StatefulWidget {
  const MyPayment({super.key});

  @override
  State<MyPayment> createState() => _MyPaymentState();
}

class _MyPaymentState extends State<MyPayment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF4F4F4),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: Container(
            width: double.infinity,
            height: 70.h,
            decoration: const BoxDecoration(
              color: Color(0xffD3A3F1),
              borderRadius: BorderRadius.only(
                  // Radius for the bottom-right corner
                  ),
            ),
            child: Container(
              padding: EdgeInsets.only(
                  left: 12.w, top: 12.h, bottom: 10.h, right: 20.w),
              child: Row(
                children: [
                  IconButton(
                    icon: SvgPicture.asset(
                      'assets/chatBox_icon/back.svg',
                      // Replace with your SVG file path
                      width: 24.h,
                      height: 24.h,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                      // Handle button press
                    },
                  ),
                  const Spacer(),
                  const Helvetica(
                    text: "Payment's",
                    color: Colors.black,
                    size: 24.81,
                    weight: FontWeight.w500,
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 30.w,
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(
            left: 10.w,
            top: 20.h,
            right: 10.w,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10.w),
                  child: const Helvetica(
                    text: "Upcoming payment's",
                    color: Color(0xff000000),
                    size: 10,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  height: 78.h,
                  width: 362.w,
                  padding: EdgeInsets.only(left: 20.w, right: 10.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xffD3A3F1))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Helvetica(
                            text: "Psychologist session fee",
                            color: Color(0xff000000),
                            size: 16,
                            weight: FontWeight.w500,
                          ),
                          Helvetica(
                            text: "21 December,2023",
                            color: Color(0xff606060),
                            size: 10,
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          PayDialog(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          height: 23.h,
                          width: 75.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color(0xffD3A3F1)),
                          child: const Center(
                            child: Helvetica(
                                text: "Pay now",
                                size: 15,
                                weight: FontWeight.w500),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 67.h,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.w),
                  child: const Helvetica(
                    text: "Accomplished payment's",
                    color: Color(0xff000000),
                    size: 10,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  height: 78.h,
                  width: 362.w,
                  padding: EdgeInsets.only(left: 20.w, right: 10.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xffD3A3F1))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Helvetica(
                            text: "Psychologist session fee",
                            color: Color(0xff000000),
                            size: 16,
                            weight: FontWeight.w500,
                          ),
                          Helvetica(
                            text: "21 December,2023",
                            color: Color(0xff606060),
                            size: 10,
                          ),
                        ],
                      ),
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          height: 23.h,
                          width: 75.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: const Color(0xffBABABA)),
                          child: const Center(
                            child: Helvetica(
                                text: "Paid",
                                size: 15,
                                weight: FontWeight.w500),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 78.h,
                  width: 362.w,
                  padding: EdgeInsets.only(left: 20.w, right: 10.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xffD3A3F1))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Helvetica(
                            text: "Psychologist session fee",
                            color: Color(0xff000000),
                            size: 16,
                            weight: FontWeight.w500,
                          ),
                          Helvetica(
                            text: "21 December,2023",
                            color: Color(0xff606060),
                            size: 10,
                          ),
                        ],
                      ),
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          height: 23.h,
                          width: 75.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: const Color(0xffBABABA)),
                          child: const Center(
                            child: Helvetica(
                                text: "Paid",
                                size: 15,
                                color: Colors.black,
                                weight: FontWeight.w500),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 78.h,
                  width: 362.w,
                  padding: EdgeInsets.only(left: 20.w, right: 10.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xffD3A3F1))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Helvetica(
                            text: "Psychologist session fee",
                            color: Color(0xff000000),
                            size: 16,
                            weight: FontWeight.w500,
                          ),
                          Helvetica(
                            text: "21 December,2023",
                            color: Color(0xff606060),
                            size: 10,
                          ),
                        ],
                      ),
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          height: 23.h,
                          width: 75.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: const Color(0xffBABABA)),
                          child: const Center(
                            child: Helvetica(
                                text: "Paid",
                                size: 15,
                                color: Colors.black,
                                weight: FontWeight.w500),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 78.h,
                  width: 362.w,
                  padding: EdgeInsets.only(left: 20.w, right: 10.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xffD3A3F1))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Helvetica(
                            text: "Psychologist session fee",
                            color: Color(0xff000000),
                            size: 16,
                            weight: FontWeight.w500,
                          ),
                          Helvetica(
                            text: "21 December,2023",
                            color: Color(0xff606060),
                            size: 10,
                          ),
                        ],
                      ),
                      InkWell(
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          height: 23.h,
                          width: 75.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: const Color(0xffBABABA)),
                          child: const Center(
                            child: Helvetica(
                                text: "Paid",
                                size: 15,
                                color: Colors.black,
                                weight: FontWeight.w500),
                          ),
                        ),
                      )
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
