import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/core/consts.dart';

import 'search_screen_head_text.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchScreenHeadText(title: 'Top Searches'),
        kheight,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const TopSearchIdleWidget();
            },
            separatorBuilder: (context, index) {
              return kheight20;
            },
            itemCount: 20,
          ),
        ),
      ],
    );
  }
}

class TopSearchIdleWidget extends StatelessWidget {
  const TopSearchIdleWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          height: 80,
          width: screenWidth * .4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
                image: NetworkImage(
                  kMainImage,
                ),
                fit: BoxFit.cover),
          ),
        ),
        kwidth,
        const Expanded(
          child: Text(
            'Movie Name',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ),
        const CircleAvatar(
          backgroundColor: kwhiteColor,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: kblackcolor,
            radius: 23,
            child: Icon(
              CupertinoIcons.play_fill,
              color: kwhiteColor,
            ),
          ),
        ),
      ],
    );
  }
}
