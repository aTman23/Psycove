import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Fonts/helveticaFont.dart';
import 'Component/textfielsContainer.dart';

class PsyPersonalProfile extends StatefulWidget {
  const PsyPersonalProfile({super.key});

  @override
  State<PsyPersonalProfile> createState() => _PsyPersonalProfileState();
}

class _PsyPersonalProfileState extends State<PsyPersonalProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff8ADCFF),
        title: Row(
          children: [
            IconButton(
              icon: SvgPicture.asset(
                'assets/chatBox_icon/back.svg',
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
              text:'Personal Profile',

                color: Colors.black,
                size: 24,
                weight: FontWeight.w500,

            ),
            const Spacer(),
            SizedBox(
              width: 30.w,
            ),
          ],
        ),
      ),
      body:Container(
        padding: EdgeInsets.only(left: 12.w, right: 10.w, top: 12.h,bottom: 55.h),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextfieldContainer(
                  Title: "Your Name",
                  hinttitle:"name"),
              SizedBox(
                height: 15.h,
              ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Helvetica(
                  text:"Gender",

                    color: Color(0xff606060),
                    size: 18,
                    weight: FontWeight.w400,

                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 40.h,
                  width: 300.w,
                  padding: EdgeInsets.only(left: 30.w, ),
                  child: FormBuilderDropdown(
                    style: const TextStyle(
                      fontFamily: "Helvetica",
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                    ),
                    name: 'gender',
                    decoration: InputDecoration(
                      hintText: "Select Gender",
                      hintStyle: const TextStyle(
                        fontFamily: "Helvetica",
                          fontSize: 17.0, // Set the desired font size
                          fontWeight: FontWeight.normal // Set the desired font weight
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffD3A3F1),width: 5),
                        borderRadius: BorderRadius.circular(6.0),
                        // Set rounded corners
                      ),
                    ),
                    items: ['Male', 'Female', 'Other'].map((gender) => DropdownMenuItem(
                      value: gender,
                      child: Helvetica(text: gender,
                        size: 17,

                      ),
                    ),).toList(),
                  ),
                ),
              ],
            ),
          ),
              SizedBox(
                height: 15.h,
              ),
              const TextfieldContainer(
                  Title: 'Deals with',
                  hinttitle: 'Depression'),
              SizedBox(
                height: 15.h,
              ),
              const TextfieldContainer(Title: 'Language spoken ',
                  hinttitle: 'exp:Hindi ,English'),
              SizedBox(
                height: 15.h,
              ),
              const TextfieldContainer(Title: 'Name of the License', hinttitle: 'License'),
              SizedBox(
                height: 15.h,
              ),
              const TextfieldContainer(Title: 'Bio', hinttitle: ''),
              SizedBox(
                height: 15.h,
              ),
              const TextfieldContainer(Title: 'Location', hinttitle: 'Address'),
              SizedBox(
                height: 15.h,
              ),
              const TextfieldContainer(Title: 'Your fee per session', hinttitle: '1800/-'),

          
            ],
          ),
        ),
      ) ,
      bottomSheet: SizedBox(
        width: double.maxFinite,
        height: 50.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: const Color(0xff8ADCFF), // Text color
                  elevation: 2, // Elevation
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // BorderRadius
                  ),
                ),
                onPressed: () {},
                child:  const Helvetica(
                  text:'Update Profile',

                    color: Colors.black,
                    size: 16,
                    weight: FontWeight.normal,

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
