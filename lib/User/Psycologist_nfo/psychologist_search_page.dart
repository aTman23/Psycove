import 'package:atman/User/Psycologist_nfo/psychologist_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:like_button/like_button.dart';
import '../../Fonts/helveticaFont.dart';
import '../models/models.dart';
import 'chat_room.dart';

class PsychologisstSearch extends StatefulWidget {
  const PsychologisstSearch({super.key});

  @override
  State<PsychologisstSearch> createState() => _PsychologisstSearchState();
}

class _PsychologisstSearchState extends State<PsychologisstSearch> {
  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person_2), label: "Psychologist"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.tv), label: "Community"),
          ],
          currentIndex: 1,
          onTap: (current) {
            if (current == 0) {
              Navigator.pushNamed(context, '/homepage');
            }
            if (current == 1) {}
            if (current == 2) {
              Navigator.pushNamed(context, '/communityPage');
            }
          },
        ),
        backgroundColor: const Color(0xffF4F4F4),
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(200),
            child: Container(
                width: ScreenWidth,
                height: 140.h,
                decoration: const BoxDecoration(
                    color: Color(0xffD3A3F1),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.w),
                          child: IconButton(
                            icon: SvgPicture.asset(
                              'assets/backA.svg',
                              // Replace with your SVG file path
                              width: 24,
                              height: 24,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                              // Handle button press
                            },
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          height: 27.h,
                          child: const Helvetica(
                            text: 'Find your Pal',
                            size: 24,
                            weight: FontWeight.bold,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                        SizedBox(
                          width: 40.w,
                        ),
                        const Spacer()
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.w),
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      height: 40.h,
                      child: TextField(
                        style: const TextStyle(
                            fontFamily: "Helvetica",
                            fontSize: 17,
                            fontWeight: FontWeight.w100,
                            color: Colors.black),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(5.0),
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: const Icon(Icons.search_sharp),
                          hintText: 'Psychologist',
                          hintStyle: const TextStyle(
                              fontFamily: "Helvetica",
                              fontSize: 17.0, // Set the desired font size
                              fontWeight: FontWeight
                                  .normal // Set the desired font weight
                              ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            borderSide: const BorderSide(
                              color: Color(0xffD3A3F1), // Regular border color
                              // Regular border thickness
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ))),
        body: ListView.builder(
          itemBuilder: (context, index) {
            PsychologyProfile profile = details[index];
            return Container(
              padding: EdgeInsets.only(left: 10.h, top: 10),
              margin: EdgeInsets.symmetric(horizontal: 21.w, vertical: 22.h),
              height: 170.h,
              width: 386.w,
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffD3A3F1), width: 1),
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 86.h,
                        width: 104.w,
                        child: Image.asset(
                          'assets/images/${profile.Image}.png',
                          width: 104.w,
                          height: 86.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.33.w),
                        width: 200.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 135.w,
                                  child: Helvetica(
                                      text: profile.name,
                                      maxlines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      size: 18,
                                      weight: FontWeight.w500,
                                      color: const Color(0xff000000)),
                                ),
                                const Spacer(),
                                LikeButton(
                                  isLiked: profile.Like,
                                  size: 22.h,
                                  circleColor: const CircleColor(
                                      start: Color(0xff00ddff),
                                      end: Color(0xff0099cc)),
                                  bubblesColor: const BubblesColor(
                                    dotPrimaryColor: Color(0xff33b5e5),
                                    dotSecondaryColor: Color(0xff0099cc),
                                  ),
                                )
                              ],
                            ),
                            Helvetica(
                              text: profile.Experiance,
                              size: 12,
                              weight: FontWeight.w500,
                              color: const Color(0xff677294),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 11.w,
                                  height: 10.h,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffD3A3F1),
                                      borderRadius: BorderRadius.circular(7)),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Helvetica(
                                  text: " ${profile.Stories} Patient Stories",
                                  size: 12,
                                  weight: FontWeight.w500,
                                  color: const Color(0xff677294),
                                ),
                              ],
                            ),
                            RatingBar.builder(
                              minRating: 1,
                              initialRating: profile.Rate,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 16,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              ignoreGestures: true,
                              onRatingUpdate: (rating) {},
                            ),
                            Helvetica(
                              text: "${profile.Rate} | ${profile.Review}",
                              size: 12,
                              weight: FontWeight.w500,
                              color: const Color(0xff677294),
                            ),
                            Helvetica(
                              text: '@ ${profile.Price} /-',
                              size: 12,
                              weight: FontWeight.w500,
                              color: const Color(0xff677294),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 34.h,
                        width: 80.w,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: const Color(0xffD3A3F1),
                            // Text color
                            elevation: 2,
                            shadowColor: const Color(0xff803a9f),
                            // Elevation
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(10), // BorderRadius
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ChatRoom()),
                            );
                          },
                          child: const Helvetica(
                            text: 'Chat',
                            color: Colors.black,
                            size: 12,
                            weight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 34.h,
                        width: 150.w,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            splashFactory: InkSplash.splashFactory,
                            foregroundColor: Colors.black,
                            backgroundColor: const Color(0xffD3A3F1),
                            shadowColor: const Color(0xff803a9f),
                            // Text color
                            elevation: 2,
                            // Elevation
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              // BorderRadius
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PsychologistProfile(profile)),
                            );
                          },
                          child: const Helvetica(
                            text: 'Book a session',
                            color: Colors.black,
                            size: 12,
                            weight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
          itemCount: details.length,
        ));
  }
}
