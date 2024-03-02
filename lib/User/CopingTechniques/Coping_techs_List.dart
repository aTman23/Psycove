
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../Fonts/helveticaFont.dart';
import 'Coping_model.dart';
import 'Strat_Page.dart';

class CopingList extends StatefulWidget {
  const CopingList({super.key});

  @override
  State<CopingList> createState() => _CopingListState();
}

class _CopingListState extends State<CopingList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(180),
          child: Container(
              height: 180.h,
              decoration: const BoxDecoration(
                  color: Color(0xffD3A3F1),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 12.w, top: 30.h, bottom: 10.h, right: 20.w),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        'assets/chatBox_icon/back.svg', // Replace with your SVG file path
                        width: 24.h,
                        height: 24.h,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                        // Handle button press
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/Coping_icons/image022.png',
                        width: 100,
                        height: 100,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.w),
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        height: 40.h,
                        child: Container(
                          alignment: Alignment.center,
                          height: 27.h,
                          child: const Helvetica(
                            text:'Coping Technique',
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                              size: 20,
                              color: Colors.white,
                              weight: FontWeight.w700,

                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ))),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: ListView.builder(
          itemCount: copingDetails.length,

          itemBuilder: (context, index) {
            CopingDetails data =copingDetails[index];
            return InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  CopingFirstPage(details: data, go: index,)),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                height: 60.h,
                decoration: BoxDecoration(
                    color: const Color(0xffD3A3F1),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 240.w,
                      child: Helvetica(
                        text:data.name,
                        maxlines: 1,
                        overflow:TextOverflow.ellipsis,
                        alignment: TextAlign.left,
                        size: 18,
                         weight: FontWeight.w500,
                            color: Colors.white),

                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  CopingFirstPage(details: data, go: index,)),
                        );
                      },
                      icon: const Icon(Icons.arrow_forward_ios_outlined),)
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}