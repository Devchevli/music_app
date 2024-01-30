import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';

class AudioController extends ChangeNotifier {
  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();

  double totalDuration = 0;

  bool _isPlaying = false;

  openSong({required String path}) {
    assetsAudioPlayer
        .open(
      Audio(path),
      autoStart: true,
      showNotification: true,
    )
        .then((value) {
      totalDuration =
          assetsAudioPlayer.current.value!.audio.duration.inSeconds.toDouble();
      notifyListeners();
    });
  }

  pause() {
    assetsAudioPlayer.pause();
    notifyListeners();
  }

  play() {
    assetsAudioPlayer.play();
    notifyListeners();
  }

  setstatus() {
    _isPlaying = (assetsAudioPlayer.isPlaying.value) ? false : true;

    print("Status : $_isPlaying");
    notifyListeners();
  }

  bool get getStatus {
    return _isPlaying;
  }

  changeStatus() {
    (assetsAudioPlayer.isPlaying.value) ? pause() : play();

    refresh() {
      notifyListeners();
    }
  }

  seek({required int sec}) {
    assetsAudioPlayer.seek(Duration(seconds: sec));
    notifyListeners();
  }

  close() {
    assetsAudioPlayer.stopped;
    notifyListeners();
  }
}
