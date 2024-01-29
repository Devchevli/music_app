import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:music_app/utils/audio_song.dart';

import '../utils/models.dart';

class Carousel_Controller extends ChangeNotifier{

  final CarouselController _carousalcontroller = CarouselController();

  int _current = 0;
  List<MovieModel> _allSong = [];

  String selectMovieName = "";

  bool _isAllSong = false;

  setAllSong(bool val){
    _isAllSong = val;
    notifyListeners();
  }

   get getIsAllSong{
    return _isAllSong;
  }

  setSelectMovieName({required String movieName}){
    selectMovieName = movieName;
    notifyListeners();
  }
   String get getSelectedMovieName{
    return selectMovieName;
   }

   set currentIndex(int index){
    _current = index;
    notifyListeners();
   }
   get getCurrentIndex{
    return _current;
   }
   get getController{
    return _carousalcontroller;
   }

   List get getAllSongs{
    return _allSong;
   }

   setAllSongs({required String movie}){
    _allSong.clear();
    Audio_Songs.map((e) => if(){});
   }


}