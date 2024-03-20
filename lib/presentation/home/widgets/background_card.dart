import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/core/consts.dart';

import 'custom_widget.dart';

class BackgroundCardWidget extends StatelessWidget {
  const BackgroundCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(kMainImage), fit: BoxFit.cover),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CUstomButtonWidget(
                  icon: Icons.add,
                  title: "List",
                ),
                _playbutton(),
                const CUstomButtonWidget(
                    icon: Icons.info_outline, title: "Info")
              ],
            ),
          ),
        )
      ],
    );
  }
}

TextButton _playbutton() {
  return TextButton.icon(
    onPressed: () {},
    style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(kwhiteColor)),
    icon: const Icon(
      Icons.play_arrow,
      size: 20,
      color: kblackcolor,
    ),
    label: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        "Play",
        style: TextStyle(fontSize: 20, color: kblackcolor),
      ),
    ),
  );
}
