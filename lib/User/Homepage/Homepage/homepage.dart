import 'package:atman/Fonts/helveticaFont.dart';
import 'package:atman/User/Homepage/Components/dailyChallengeContainer.dart';
import 'package:atman/User/Homepage/Components/emojiButton.dart';
import 'package:atman/User/Homepage/Components/relaxationToolContainer.dart';
import 'package:atman/User/Homepage/Components/ribbonButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import '../Components/nunitoText.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: const Color(0xffF4F4F4),
        surfaceTintColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                InkWell(
                  child: const Image(
                    image: AssetImage("assets/images/person.png"),
                    width: 40,
                    height: 40,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/profilePage');
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Helvetica(
                      text: "Hello, Welcome 🎉",
                      size: 14,
                      weight: FontWeight.w400,
                    ),
                    Helvetica(
                      text: 'Nikesh',
                      size: 16,
                      weight: FontWeight.w600,
                      color: Color(0xFFCA74FF),
                    ),
                  ],
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/notifications');
              },
              icon: const Icon(
                Icons.notifications_none_rounded,
                size: 30,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_2), label: "Psychologist"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.tv), label: "Community"),
        ],
        currentIndex: 0,
        onTap: (current) {
          if (current == 1) {
            Navigator.pushNamed(context, '/psycologistSearch');
          }
          if (current == 2) {
            Navigator.pushNamed(context, '/communityPage');
          }
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: screenSize.width * 0.9,
                      height: screenSize.height * 0.2 > 120
                          ? screenSize.height * 0.2
                          : 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: const Image(
                          image: AssetImage(
                            "assets/images/bg1.png",
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    // Container(
                    //   width: screenSize.width * 0.7,
                    //   height: screenSize.height * 0.125 > 80
                    //       ? screenSize.height * 0.125
                    //       : 80,
                    //   padding: const EdgeInsets.all(10),
                    //   decoration: BoxDecoration(
                    //     color: Colors.white.withOpacity(0.8),
                    //     borderRadius: BorderRadius.circular(10),
                    //   ),
                    //   child: const Center(
                    //     child: PoppinsText(
                    //       text:
                    //           "The only difference between a good day and a bad day is your mindset",
                    //       size: 16,
                    //       weight: FontWeight.w500,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RibbonButton(
                      imagePath: "assets/images/dart.png",
                      text: "Daily Goals",
                      onPressed: () {
                        Navigator.pushNamed(context, '/dailygoals');
                      },
                    ),
                    RibbonButton(
                      imagePath: "assets/images/todo.png",
                      text: "Tasks",
                      onPressed: () {
                        Navigator.pushNamed(context, '/clientTaskScreen');
                      },
                    ),
                    RibbonButton(
                      imagePath: "assets/images/console.png",
                      text: "Games",
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Helvetica(
                    text: "HOW ARE YOU FEELING TODAY?",
                    size: 16,
                    weight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Stack(
                    children: [
                      Container(
                        height: screenSize.height * 0.125 > 100
                            ? screenSize.height * 0.125
                            : 100,
                        width: double.maxFinite,
                        color: const Color(0xFFDB9CE1),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            EmojiButton(
                                emojiPath: "assets/images/joy.png",
                                text: "Joy",
                            list: [
                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Joy/cheerful.png'),
                                width: 42,
                                height: 42,
                              ),
                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Joy/Content.png'),
                                width: 45,
                                height: 45,
                              ),
                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Joy/Happy.png'),
                                width: 45,
                                height: 45,
                              ),

                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Joy/Optimistic.png'),
                                width: 45,
                                height: 45,
                              ),
                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Joy/Proud.png'),
                                width: 40,
                                height: 40,
                              )
                            ],
                            ),

                            EmojiButton(
                                emojiPath: "assets/images/love.png",
                                text: "Love",list: [
                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Love/Desirous.png'),
                                width: 40,
                                height: 40,
                              ),
                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Love/longing.png'),
                                width: 35,
                                height: 35,
                              ),
                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Love/peaceful.png'),
                                width: 40,
                                height: 40,
                              ),

                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Love/Romantic.png'),
                                width: 45,
                                height: 45,
                              ),
                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Love/Tender.png'),
                                width: 45,
                                height: 45,
                              )
                            ],),
                            EmojiButton(
                                emojiPath: "assets/images/suprised.png",
                                text: "Surprised",list: [
                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Suprised/confused.png'),
                                width: 42,
                                height: 42,
                              ),
                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Suprised/Moved.png'),
                                width: 45,
                                height: 45,
                              ),
                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Suprised/Overcome.png'),
                                width: 40,
                                height: 40,
                              ),

                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Suprised/stunned.png'),
                                width: 45,
                                height: 45,
                              ),
                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Fear/scared.png'),
                                width: 45,
                                height: 45,
                              )
                            ],),
                            EmojiButton(
                                emojiPath: "assets/images/sadness.png",
                                text: "Sad",list: [
                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Sadness/Disappointed.png'),
                                width: 40,
                                height: 40,
                              ),
                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Sadness/Distressed.png'),
                                width: 40,
                                height: 40,
                              ),
                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Sadness/Hopeless.png'),
                                width: 60,
                                height: 60,
                              ),

                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Sadness/Melancholic.png'),
                                width: 35,
                                height: 35,
                              ),
                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Sadness/Shameful.png'),
                                width: 45,
                                height: 45,
                              )
                            ],),
                            EmojiButton(
                                emojiPath: "assets/images/fear.png",
                                text: "Fear",list: [
                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Fear/Horrified.png'),
                                width: 38,
                                height: 38,
                              ),
                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Fear/insecure.png'),
                                width: 38,
                                height: 38,
                              ),
                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Fear/Nervous.png'),
                                width: 45,
                                height: 45,
                              ),

                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Fear/scared.png'),
                                width: 45,
                                height: 45,
                              ),
                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Fear/Terrified.png'),
                                width: 45,
                                height: 45,
                              )
                            ],),
                            EmojiButton(
                                emojiPath: "assets/images/Anger.png",
                                text: "anger",list: [
                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Anger/Disgusted.png'),
                                width: 45,
                                height: 45,
                              ),
                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Anger/Enraged.png'),
                                width: 45,
                                height: 45,
                              ),
                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Anger/ENvious.png'),
                                width: 50,
                                height: 50,
                              ),

                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Anger/exaperated.png'),
                                width: 45,
                                height: 45,
                              ),
                              Image(
                                image: AssetImage(
                                    'assets/how_are_you_feeling/Anger/irritable.png'),
                                width: 42,
                                height: 42,
                              )
                            ],),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Helvetica(
                        text: "RELAXATION TOOLS",
                        size: 16,
                        weight: FontWeight.w700),
                    InkWell(
                      child: Helvetica(
                        text: "See All",
                        size: 14,
                        weight: FontWeight.w700,
                        color: Color(0xFFD3A3F1),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      RelaxationToolContainer(
                        imgPath: "assets/images/med2.png",
                        text: "Meditation",
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      RelaxationToolContainer(
                        imgPath: "assets/images/console1.png",
                        text: "Games",
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      RelaxationToolContainer(
                        imgPath: "assets/images/med2.png",
                        text: "Meditation",
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Helvetica(
                    text: "DAILY CHALLENGES",
                    size: 17,
                    weight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  child: SizedBox(
                    height: 180,
                    child: Stack(
                      children: [
                        Align(
                          child: Container(
                            padding: const EdgeInsets.only(right: 100),
                            width: 280,
                            height: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xFFD3A3F1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            // width: 200,
                            // height: 45,
                            alignment: Alignment.center,
                            child: const Helvetica(
                              text:"DAILY GOALS",
                              weight: FontWeight.w600,
                              size: 23),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.topRight,
                          child: Image(
                            image: AssetImage("assets/images/dailygoals.png"),
                            width: 160,
                            height: 180,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/dailygoals');
                  },
                ),
                DailyChallengeContainer(
                  heading: "Self Test",
                  content:
                      "Working on problem and self examination is sign of strength",
                  imgPath: "assets/images/todo1.png",
                  containerColor: const Color(0xFF6DD3CE),
                  onPressed: () {
                    Navigator.pushNamed(context, '/selfTest');
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                DailyChallengeContainer(
                  heading: "Coping Technique",
                  content:
                      "Working on problem and self examination is sign of strength",
                  imgPath:
                      "assets/images/3d-rendering-cartoon-like-woman-doing-yoga-PhotoRoom.png-PhotoRoom.png",
                  containerColor: const Color(0xFF8367C7),
                  onPressed: () {
                    Navigator.pushNamed(context, '/copingTechnique');
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                DailyChallengeContainer(
                  heading: "Daily Journal",
                  content:
                      "Unlock Your Thoughts, Write Your Heart: Your Daily Diary Companion",
                  imgPath:
                      "assets/images/m028t0142_d_teacher_resources_01sep22-PhotoRoom.png-PhotoRoom.png",
                  containerColor: const Color(0xFF85CB33),
                  onPressed: () {
                    Navigator.pushNamed(context, '/dailyJournal');
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  child: Container(
                    height: 100,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xff6fa0ef),
                          Color(0xffCaa1f1),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Helvetica(
                              text: "Check Your Performance",
                              size: 18,
                              weight: FontWeight.w700,
                              color: Colors.white,
                            ),
                            Helvetica(
                              text: "Check Your's with graph",
                              size: 12,
                              weight: FontWeight.w400,
                              color: Colors.white,
                              spacing: 0.6,
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                  onTap: (){
                    Navigator.pushNamed(context, '/myPerformance');
                  },
                ),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
