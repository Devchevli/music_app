import 'package:flutter/material.dart';
import 'package:music_app/components/audio_carousal.dart';
import 'package:music_app/components/audio_controller.dart';
import 'package:provider/provider.dart';

class AudioPage extends StatelessWidget {
  const AudioPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Column(
      children: [
        SizedBox(height: 15,),
      ],
      Consumer<Audio_carousal>(builder: (context, pro,_) {return  },)



    );
  }
}
