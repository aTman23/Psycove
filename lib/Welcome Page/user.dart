import 'package:atman/Fonts/helveticaFont.dart';
import 'package:flutter/material.dart';

class UserSelectPage extends StatelessWidget {
  const UserSelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Center(
            child: Column(
              children: [
                Image(
                  image: const AssetImage(
                      'assets/images/a2fcc40db731b43465af43735582bad4.png'),
                  width: width * 0.7,
                ),
                const SizedBox(
                  height: 50,
                ),
                const Helvetica(text: "LOGIN AS", size: 23, weight: FontWeight.w700),

                const SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 150,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          child: const Image(
                            image: AssetImage(
                                'assets/images/c33b86c625f0748c0be6b3dea3833980.png'),
                            width: 130,
                          ),
                        ),
                        // SizedBox(
                        //   width: 50,
                        // ),
                        const Helvetica(text: "USER",weight: FontWeight.w700,size: 23,)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    Navigator.pushNamed(context, '/psychologistSignIn');
                  },
                  child: Container(
                    height: 150,
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          child: const Image(
                            image: AssetImage(
                                'assets/images/3778f884c056adf758947a7725c6cbc3.png'),
                            width: 150,
                          ),
                        ),
                        const Expanded(
                          flex: 1,
                          child: Helvetica(text: "THERAPIST",weight: FontWeight.w700,size: 23,),
                        )
                      ],
                    ),
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
