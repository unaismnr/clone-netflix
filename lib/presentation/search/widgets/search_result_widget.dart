import 'package:flutter/material.dart';
import 'package:netflix_clone/core/consts.dart';
import 'package:netflix_clone/presentation/search/widgets/search_screen_head_text.dart';
import 'package:netflix_clone/presentation/widgets/main_card.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchScreenHeadText(title: 'Search Result'),
        kheight,
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            childAspectRatio: 1.2 / 1.6,
            children: List.generate(
              10,
              (index) => const MainCards(),
            ),
          ),
        ),
      ],
    );
  }
}
