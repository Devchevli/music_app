import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_app/images/App_images.dart';

class Audio_Player extends StatefulWidget {
  const Audio_Player({super.key});

  @override
  State<Audio_Player> createState() => _Audio_PlayerState();
}

class _Audio_PlayerState extends State<Audio_Player> {
  @override
  Widget build(BuildContext context) {

    List<String> song = [
      'https://youtu.be/P9zFEN13XYs?list=PL0y6ScMLZlEQjwDUlK6f0uzS5e5Bffxu7',
      'https://youtu.be/P9zFEN13XYs?list=PL0y6ScMLZlEQjwDUlK6f0uzS5e5Bffxu7',
      'https://youtu.be/P9zFEN13XYs?list=PL0y6ScMLZlEQjwDUlK6f0uzS5e5Bffxu7',
      'https://youtu.be/P9zFEN13XYs?list=PL0y6ScMLZlEQjwDUlK6f0uzS5e5Bffxu7',
      'https://youtu.be/P9zFEN13XYs?list=PL0y6ScMLZlEQjwDUlK6f0uzS5e5Bffxu7',
    ];

    final audioPlayer = AudioPlayer();
    bool isPlaying = false;
    Duration duration = Duration.zero;
    Duration position = Duration.zero;

    @override
    void initState() {
      super.initState();

      audioPlayer.onPlayerStateChanged.listen((state) {
        setState(() {
          isPlaying = state == PlayerState.playing;
        });
      });
      audioPlayer.onDurationChanged.listen((newDuration) {
        setState(() {
          duration = newDuration;
        });
      });
      audioPlayer.onDurationChanged.listen((newPosition){
        setState(() {
          position = newPosition;
        });
      });
    }

    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              AppImages.pop1,
              width: double.infinity,
              height: 350,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            "Flutter song",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
          ),
          Slider(
            min: 0,
            max: duration.inSeconds.toDouble(),
            value: position.inSeconds.toDouble(),
            onChanged: (value) async {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(formatTime(position)),
                Text(formatTime(duration - position)),
              ],
            ),
          ),
          CircleAvatar(
            radius: 35,
            child: IconButton(
              icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
              iconSize: 50,
              onPressed: () async {
                if (isPlaying) {
                  await audioPlayer.pause();
                } else {
                  await audioPlayer.play(UrlSource("https://youtu.be/P9zFEN13XYs?list=PL0y6ScMLZlEQjwDUlK6f0uzS5e5Bffxu7"));
                }
              },
            ),
          )
        ],
      ),
    ));
  }

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return [
      if (duration.inHours > 0) hours,
      minutes,
      seconds,
    ].join(':');
  }
}
