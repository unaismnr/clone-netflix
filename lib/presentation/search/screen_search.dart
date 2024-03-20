import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/core/consts.dart';
import 'package:netflix_clone/presentation/search/widgets/search_idle_widget.dart';

import 'widgets/search_result_widget.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              CupertinoSearchTextField(
                backgroundColor: kGreyColor.withOpacity(0.5),
                prefixIcon: const Icon(
                  Icons.search,
                  color: kGreyColor,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: kGreyColor,
                ),
                style: const TextStyle(color: kwhiteColor),
              ),
              kheight,
              const Expanded(child: SearchResultWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
