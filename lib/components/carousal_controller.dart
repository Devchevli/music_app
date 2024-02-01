import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:music_app/utils/audio_song.dart';

import '../utils/models.dart';

class CarouselControllerPro extends ChangeNotifier {
  final CarouselController _carousalcontroller = CarouselController();

  int _current = 0;
  List<MovieModel> _allSong = [];

  String selectMovieName = "";

  bool _isAllSong = false;

  setAllSong(bool val) {
    _isAllSong = val;
    notifyListeners();
  }

  get getIsAllSong {
    return _isAllSong;
  }

  setSelectMovieName({required String movieName}) {
    selectMovieName = movieName;
    notifyListeners();
  }

  String get getSelectedMovieName {
    return selectMovieName;
  }

  setcurrentIndex(int index) {
    _current = index;
    notifyListeners();
  }

  get getCurrentIndex {
    return _current;
  }

  get getController {
    return _carousalcontroller;
  }

  List get getAllSongs {
    return _allSong;
  }

  setAllSongs({required String movie}) {
    _allSong.clear();
    Audio_Songs.map((e) {
      if (e['movie'] == movie) {
        MovieModel m = MovieModel.fromMap(data: e);
        _allSong.add(m);
      }
    }).toList();
    notifyListeners();
  }

  String setSinger({required List<String> name}) {
    String s_name = "";

    name.forEach((element) {
      s_name = s_name + element + ",";
    });
    return s_name;
  }

  int _favcurrent = 0;
  String albumSongName = '';

  setAlbumSongName({required String name}) {
    albumSongName = name;
    notifyListeners();
  }

  get getAlbumSongName {
    return albumSongName;
  }//

  setAllOverSong() {
    _allSong.clear();
    Audio_Songs.map((e) {
      MovieModel m = MovieModel.fromMap(data: e);
      _allSong.add(m);
    }).toList();
    notifyListeners();
    _isAllSong = false;
  }

  setfavCurrent({required int index}){
    _favcurrent = index;
    notifyListeners();
  }
  get getfavcurrent{
    return _favcurrent;
  }
}
