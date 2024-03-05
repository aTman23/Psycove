import 'package:atman/User/MusicFolder/MusicScreen.dart';
import 'package:flutter/material.dart';

import '../../../Fonts/helveticaFont.dart';
import '../../MusicFolder/MusicModel.dart';

class RelaxationToolContainer extends StatelessWidget {
  const RelaxationToolContainer(
      {super.key, required this.imgPath, required this.text});

  final String imgPath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0x80B7FFE5),
      ),
      child: Row(
        children: [
          Image(
            image: AssetImage(imgPath),
            width: 150,
          ),
          Column(
            children: [
              Helvetica(
                text: text,
                size: 19,
                weight: FontWeight.w700,
              ),
              MaterialButton(onPressed: ()  {
               Navigator.push(context, MaterialPageRoute(builder: (context){
                 return MusicScreen(songName: songs[1].name, songPath:songs[1].audioPath, currentIndex: 1,);
               }));
              }, child: const Icon(Icons.play_circle),),

            ],
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
