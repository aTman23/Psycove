import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const Image(
          image: AssetImage('assets/images/snapedit_1706272025282.png'),
          fit: BoxFit.fill,
          height: double.maxFinite,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            Helvetica(text: "Welcome to", size: 30, weight: FontWeight.w700,color: Colors.white,),
            Helvetica(text: "ATMAN", size: 35, weight: FontWeight.w700,color: Color(0xFFD3A3F1,),),
            Helvetica(text:  '"bridging the gap between you and your innerself"', size: 20, weight: FontWeight.w500,color: Colors.white,),

            SizedBox(
              height: 20,
            ),
            InkWell(
              child: Container(
                width: 50,
                height: 50,
                child: Icon(Icons.arrow_forward_ios_rounded),
                decoration: BoxDecoration(
                  color: Color(
                    0xFFD3A3F1,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/userSelectScreen');
              },
            )
          ],
        )
      ]),
    );
  }
}
