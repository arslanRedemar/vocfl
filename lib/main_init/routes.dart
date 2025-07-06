import 'package:flutter/material.dart';

import '../src/presentation/pages/AddDirectView/ws_direct_screen.dart';
import '../src/presentation/pages/AddImportView/ws_import_screen.dart';
import '../src/presentation/pages/AnalysisView/analysis_view.dart';
import '../src/presentation/pages/FlashCardView/flash_card_screen.dart';
import '../src/presentation/pages/HomeView/home_view_main.dart';
import '../src/presentation/pages/ResultView/result_view.dart';
import '../src/presentation/pages/SettingView/setting_screen.dart';
import '../src/presentation/pages/WordEditView/word_edit_view.dart';
import '../src/presentation/pages/WordTestView/word_test_view.dart';
import '../src/presentation/pages/WordsSetView/words_set_screen.dart';

class VocflRoutes {
  static Map<String, Widget Function(BuildContext)> vocflRoutes = {
    SettingScreen.routeName: (context) => SettingScreen(),
    ImportView.routeName: (context) => ImportView(),
    AddWordsSet.routeName: (context) => AddWordsSet(),
    WordsSetScreen.routeName: (context) => WordsSetScreen(),
    FlashCard.routeName: (context) => FlashCard(),
    WordsEditView.routeName: (context) => WordsEditView(),
    WordTestView.routeName: (context) => WordTestView(),
    ResultView.routeName: (context) => ResultView(),
    AnalysisView.routeName: (context) => AnalysisView(),
    HomeView.routeName: (context) => HomeView(),
  };
}
