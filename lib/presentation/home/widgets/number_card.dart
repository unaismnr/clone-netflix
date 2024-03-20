import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/core/consts.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({
    super.key,
    required this.size,
    required this.index,
  });

  final Size size;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 40, right: 5),
          width: size.width * 0.35,
          height: size.width * 0.55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: const DecorationImage(
              image: NetworkImage(kMainImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: -28,
          left: 2,
          child: BorderedText(
            strokeColor: kwhiteColor,
            strokeWidth: 3.0,
            child: Text(
              "$index",
              style: const TextStyle(
                decoration: TextDecoration.none,
                fontSize: 130,
                fontWeight: FontWeight.w900,
                color: kblackcolor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
