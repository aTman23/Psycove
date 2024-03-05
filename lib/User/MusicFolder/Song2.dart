import 'package:flutter/material.dart';
import 'MusicModel.dart';
import 'MusicScreen.dart';
class Song2 extends StatefulWidget {
  const Song2({super.key});
  @override
  State<Song2> createState() => _Song2State();
}
class _Song2State extends State<Song2> {
  @override
  Widget build(BuildContext context) {
    return MusicScreen(songName: songs[1].name, songPath:songs[1].audioPath, currentIndex: 1,);
  }
}