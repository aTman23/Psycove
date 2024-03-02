
import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'Coping_model.dart';
import 'Techniques/4-7-8/4-7-8_technique.dart';
import 'Techniques/5-4-3-2-1_technique.dart';
import 'Techniques/8-4-7_technique.dart';
import 'Techniques/Affirmation/Affirmation_list_page.dart';
import 'Techniques/Box_breathing_tech.dart';
import 'Techniques/alternate_nostril/Alternate_Nostril_breathing.dart';
import 'Techniques/belly_breathing/belly_breathing_tech.dart';
import 'Techniques/counting_backward.dart';

class CopingFirstPage extends StatefulWidget {
  CopingFirstPage({super.key,required this.details,required this.go});
  @override
  State<CopingFirstPage> createState() => _CopingFirstPageState();
  CopingDetails details;
  int go ;
}

class _CopingFirstPageState extends State<CopingFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD3A3F1),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Container(
          height: 100.h,
          decoration: const BoxDecoration(
            color: Color(0xffD3A3F1),
          ),
          child: Container(
            padding: EdgeInsets.only(left: 12.w, top: 30.h, bottom: 10.h, right: 20.w),
            child: Row(
              children: [
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/chatBox_icon/back.svg', // Replace with your SVG file path
                    width: 24.h,
                    height: 24.h,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    // Handle button press
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(height:50.h),
            Container(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 100.w,
                child: Column(children: [
                  SizedBox(height: 20.h,),
                  Image.asset(widget.details.img,height: 100,width: 100,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(widget.details.name,textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily: "Helvetica",
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                      ),),
                  ),
                ],
                ),
              ),
            ),
            SizedBox(height: 50.h,),
            const Helvetica(text:"You are one step away from overcoming your problem",alignment: TextAlign.center,

                  size: 17,
                  color: Colors.white,
                  weight: FontWeight.w600
              ),
            SizedBox(height: 50.h,),
            SizedBox(
              width: 100.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: const Color(0xffFFFFFF), // Text color
                  elevation: 2, // Elevation
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // BorderRadius
                  ),
                ),
                onPressed: () {
                  _navigateToPage(context, widget.go);
                },
                child: const Helvetica(
                  text:'Start',

                      color: Color(0xffD3A3F1),
                      size: 16,
                      weight: FontWeight.bold

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToPage(BuildContext context,int index) {
    switch (widget.go) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>const CopingTechs() ),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>const BoxBreathing() ),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>const Eight47Technique() ),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>const Bellybreathing() ),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>const Four78Technique() ),
        );
        break;
      case 5:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>const CountingBackward() ),
        );
        break;
      case 6:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>const AffirmationList() ),
        );
        break;
      case 7:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>const AlternateNostril() ),
        );
        break;
      default:
      // Handle invalid index
        break;
    }
  }
}