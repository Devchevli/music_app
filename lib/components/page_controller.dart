import 'package:flutter/cupertino.dart';

import '../screens/audio_page.dart';
import 'home_music.dart';

class Page_Controller extends ChangeNotifier {
  int _index = 0;
  List allPages = [
    HomeMusic(),
    AudioPage(),
  ];

  changePage(int index) {
    _index = index;
    notifyListeners();
  }

  get getIndex {
    return _index;
  }
}
