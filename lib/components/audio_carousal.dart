import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';

class Audio_carousal extends ChangeNotifier{
  final CarouselController _audiocarSlidercontroller = CarouselController();
  int _currentIndex = 0;


  setCurrentIndex(int index){
    _currentIndex = index;
    notifyListeners();
  }


  get getCurrentIndex {
    return _currentIndex;
      }

      get getController{
        return  _audiocarSlidercontroller;
      }
}