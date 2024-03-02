import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Fonts/helveticaFont.dart';
import 'Affirmation_model.dart';
import 'affirmation_technique.dart';

class AffirmationList extends StatelessWidget {
  const AffirmationList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 40.h,
                          child:  const Helvetica(text:
                            "Affirmation Technique",
                              size: 18,
                              color: Colors.white,
                              weight: FontWeight.w700,

                          ),
                        ),
                        Image.asset('assets/Coping_image/Affirmation.png',height: 120,width: 110,),
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
              height: 505.h,
              child: ListView.builder(
                itemCount:affirmation.length,
                itemBuilder: (context, index) {
                  Affirmation Sentance =affirmation[index];
                  return InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AffirmationTech(sentances:Sentance,)),
                      );
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 12,top: 5,bottom: 5),
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      height: 40.h,
                      width: 300.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffD3A3F1)
                      ),
                      child: Helvetica(text:Sentance.title,
                        maxlines: 1,
                        overflow: TextOverflow.ellipsis,
                            size: 17,
                            color: Colors.white,
                            weight: FontWeight.w700
                        ),
                    ),
                  );
                },),
            ),
          ],
        ),
      ),
    );
  }
}