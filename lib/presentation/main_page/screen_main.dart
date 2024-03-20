import 'package:flutter/material.dart';

import '../downloads/screen_downloads.dart';
import '../fast_laugh/screen_fast_laugh.dart';
import '../home/screen_home.dart';
import '../new_and_hot/screen_new_and_hot.dart';
import '../search/screen_search.dart';
import 'bottom_navigation.dart';

class ScreenMain extends StatelessWidget {
  ScreenMain({super.key});

  final _pages = [
    ScreenHome(),
    ScreenNewAndHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: selectedIndexNotifier,
        builder: (context, newValue, _) {
          return _pages[newValue];
        },
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
