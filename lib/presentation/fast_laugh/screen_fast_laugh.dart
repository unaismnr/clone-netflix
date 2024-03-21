import 'package:flutter/material.dart';

import 'widgets/video_list_widget.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(
            10,
            (index) => VideoListWidget(
              index: index,
            ),
          ),
        ),
      ),
    );
  }
}
