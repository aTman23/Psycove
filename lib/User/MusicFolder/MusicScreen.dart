import 'package:atman/Fonts/helveticaFont.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:gif/gif.dart';
import 'MusicModel.dart';
class MusicScreen extends StatefulWidget {
  final String songName;
  final String songPath;
  int currentIndex = 0;
  MusicScreen({super.key, required this.songName, required this.songPath,required this.currentIndex});
  @override
  State<MusicScreen> createState() => _MusicScreenState();
}
class _MusicScreenState extends State<MusicScreen> with TickerProviderStateMixin{
  final AudioPlayer _audioPlayer = AudioPlayer();
  late GifController controller2 = GifController(vsync: this,);
  bool _isPlaying = false;
  Duration _duration = const Duration();
  Duration _position = const Duration();
  String _positionString = "0:00";
  String _durationString = "0:00";
  String sname ="";


  @override
  void initState() {
    super.initState();
    controller2.repeat(
        period: const Duration(seconds: 1));
    _loadSong(widget.songPath,widget.songName);    _audioPlayer.onDurationChanged.listen((duration) {
      setState(() {
        _duration = duration;
        _durationString = "${_duration.inMinutes.remainder(60).toString().padLeft(2, '0')}:${(_duration.inSeconds.remainder(60)).toString().padLeft(2, '0')}";

      });
    });
    _audioPlayer.onPositionChanged.listen((position) {
      setState(() {
        _position = position;
        _positionString = "${_position.inMinutes.remainder(60).toString().padLeft(2, '0')}:${(_position.inSeconds.remainder(60)).toString().padLeft(2, '0')}";

      });
    });
    _audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        _isPlaying = state == PlayerState.playing;
      });
    });
    _audioPlayer.onPlayerComplete.listen((event) {
      _nextSong();
    });
  }

  void _loadSong(String path ,String name) async {
    await _audioPlayer.stop();
    await _audioPlayer.play(AssetSource(path));
    sname = name;
  }

  void _playPause() {
    if (_isPlaying) {
      controller2.reset();
      _audioPlayer.pause();
    } else {
      controller2.repeat(
          period: const Duration(
              seconds:
              1));
      _audioPlayer.resume();
    }
  }

  void _nextSong() {
    if (widget.currentIndex < songs.length - 1) {
      widget.currentIndex++;
      _loadSong(songs[widget.currentIndex].audioPath,songs[widget.currentIndex].name);
    }
    else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            duration: const Duration(seconds: 2),
            elevation: 0,
            backgroundColor: Colors.grey.shade200,
            behavior: SnackBarBehavior.floating,
            margin: const EdgeInsets.only(bottom: 120),
            content: const Center(
                child:Helvetica(
                  text: 'No next song',
                  color: Colors.black,
                  size: 17,
                )
            )),
      );
    }
  }

  void _prevSong() {
    if (widget.currentIndex > 0) {
      widget.currentIndex--;
      _loadSong(songs[widget.currentIndex].audioPath,songs[widget.currentIndex].name);
    }
    else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            duration: const Duration(seconds: 2),
            elevation: 0,
            backgroundColor: Colors.grey.shade200,
            behavior: SnackBarBehavior.floating,
            margin: const EdgeInsets.only(bottom: 120),
            content: const Center(
                child:Helvetica(
                  text: 'No previous song',
                  color: Colors.black,
                  size: 17,
                )
            )),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffD3A3F1),
        title: Row(
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 2,
                      color: Colors.white
                  ),
                  borderRadius: BorderRadius.circular(50)
              ),
              child: IconButton(
                icon:const Icon(Icons.arrow_back,size: 30,),
                onPressed: () {
                  Navigator.of(context).pop();
                  // Handle button press
                },
              ),
            ),
            const Spacer(),
            const SizedBox(
              width: 30,
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(left:24,right:24,bottom: 140),
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
                color:Color(0xffD3A3F1),
                borderRadius: BorderRadius.vertical(bottom: Radius.elliptical(200, 100))
            ),
            child:  Gif(
              controller: controller2,
              fit: BoxFit.fill,
              image: const AssetImage(
                "assets/Songs/2.gif",
              ),
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
            child: Column(
              children: [
                Text(
                  sname,
                  style: const TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 40),
                Slider(
                  activeColor: const Color(0xffD3A3F1),
                  value: _position.inMilliseconds.toDouble(),
                  max: _duration.inMilliseconds.toDouble(),
                  onChanged: (value) {
                    _audioPlayer.seek(Duration(milliseconds: value.toInt()));
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Helvetica(text:_durationString,
                        size: 17,
                        weight: FontWeight.w500,),
                      Helvetica(text:_positionString,
                        size: 17,
                        weight: FontWeight.w500,)
                    ],
                  ),
                ),
                const SizedBox(height: 100,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: _prevSong,
                      icon: const Icon(Icons.skip_previous,size: 40,),
                    ),
                    const SizedBox(width: 20,),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor:const Color(0xffD3A3F1) ,
                      child: IconButton(
                        onPressed: _playPause,
                        icon: _isPlaying ? const Icon(Icons.pause,size: 40,) : const Icon(Icons.play_arrow,size: 40,),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    IconButton(
                      onPressed: _nextSong,
                      icon: const Icon(Icons.skip_next,size: 40,),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }
}