import 'package:flutter/material.dart';
import 'package:netflix_clone/core/consts.dart';

import '../../widgets/main_title.dart';
import 'Number_card.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        MainTitle(title: title),
        kheight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => NumberCard(
                index: index + 1,
                size: size,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
