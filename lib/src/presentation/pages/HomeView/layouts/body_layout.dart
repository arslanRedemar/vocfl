import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import '../../../../../../core/error/failures.dart';
import 'package:provider/provider.dart';

import '../../../../domain/entities/multiple_words_set.dart';
import '../../../providers/multiple_words_provider.dart';
import '../../../widgets/loading_view.dart';
import '../../AddDirectView/widgets/failed_screen.dart';
import 'ws_listview_layout.dart';

class BodyLayout extends StatelessWidget {
  const BodyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Consumer<VocflDataProvider>(
          builder: (context, prov, child) {
            final dartz.Either<Failure, MultipleWordsSet> result =
                prov.wordsSetList;
            return result.fold(
              (fail) {
                if (fail is Loading) {
                  return const LoadingView();
                } else {
                  return FailedScreen(message: fail.message);
                }
              },
              (success) => WordsSetListViewLayout(list: success, prov: prov),
            );
          },
        ),
      ],
    );
  }
}
