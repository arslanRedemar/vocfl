import 'package:flutter/material.dart';

import '../../../../main_init/ini_loader.dart';
import '../../widgets/loading_view.dart';
import '../../widgets/router.dart';
import '../HomeView/home_view_main.dart';

class LaunchView extends StatelessWidget {
  const LaunchView({super.key});
  @override
  Widget build(BuildContext context) {
    init().then((value) async {
      await Future.delayed(Duration(seconds: 2));
      AppRouter.replaceRouteTo(
          context, HomeView.routeName, ScreenArguments(args: {}));
    });
    return LoadingView();
  }
}

Future<void> init() async {
  await vocflInit();
}
