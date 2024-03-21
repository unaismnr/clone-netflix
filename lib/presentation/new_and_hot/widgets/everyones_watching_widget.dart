import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/home/widgets/custom_widget.dart';

import '../../../core/consts.dart';
import 'video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) => const EveryoneWatchingList(),
      ),
    );
  }
}

class EveryoneWatchingList extends StatelessWidget {
  const EveryoneWatchingList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Friends',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight,
        Text(
          'Landing the lead in the school musical is dream come true for jodi, untill the pressure sends her confidence -- and her relationship -- into a tailspin',
        ),
        kheight,
        VideoWidget(),
        kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtonWidget(icon: Icons.share, title: 'Share'),
            kwidth,
            CustomButtonWidget(icon: Icons.add, title: 'List'),
            kwidth,
            CustomButtonWidget(icon: Icons.play_arrow, title: 'Play'),
            kwidth,
          ],
        ),
        kheight20,
      ],
    );
  }
}
