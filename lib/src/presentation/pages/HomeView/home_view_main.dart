import 'package:flutter/material.dart';
import '../../widgets/router.dart';
import '../AddImportView/ws_import_screen.dart';
import '../AnalysisView/analysis_view.dart';
import 'layouts/body_layout.dart';
import 'widgets/appbar.dart';
import 'widgets/drawer.dart';

class HomeView extends StatelessWidget {
  static const routeName = "/home";

  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: HomeDrawer(),
        appBar: appBarBuilder(context),
        body: const BodyLayout(),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Theme.of(context).primaryColor,
          items: const [
            BottomNavigationBarItem(
                label: "CSV 추출",
                icon: Icon(
                  Icons.sim_card_download,
                  size: 20,
                )),
            BottomNavigationBarItem(
                label: "분석",
                icon: Icon(
                  Icons.bar_chart_rounded,
                )),
            BottomNavigationBarItem(
                label: "기본 단어장",
                icon: Icon(
                  Icons.book,
                )),
          ],
          onTap: ((value) {
            switch (value) {
              case 0:
                AppRouter.pushRouteTo(
                    context, ImportView.routeName, ScreenArguments(args: {}));
                break;

              case 1:
                AppRouter.pushRouteTo(
                    context, AnalysisView.routeName, ScreenArguments(args: {}));
                break;
            }
          }),
        ),
      ),
    );
  }
}
