
import 'package:flutter/material.dart';

import '../../domain/entities/word.dart';

class TestResultProvider extends ChangeNotifier {
  DateTime time;
  List<Word> _wrongs = [];
  List<Word> _rights = [];
  TestResultProvider(this.time);
  int get wCounts {
    return _wrongs.length;
  }

  int get rCounts {
    return _rights.length;
  }

  List<Word> get wrongs {
    return [..._wrongs];
  }

  List<Word> get rights {
    return [..._rights];
  }

  void reset() {
    _wrongs = [];
    _rights = [];
  }

  void wrongAdd(Word word) {
    _wrongs.add(word);
    notifyListeners();
  }

  void rightAdd(Word word) {
    _rights.add(word);
    notifyListeners();
  }
}
