import 'package:flutter/material.dart';

import '../../../core/colors.dart';

class VideoListWidget extends StatelessWidget {
  final int index;
  const VideoListWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.accents[index % Colors.accents.length],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //left side
            Align(
              alignment: Alignment.bottomLeft,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: kblackcolor.withOpacity(0.4),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.volume_off,
                    size: 30,
                    color: kwhiteColor,
                  ),
                ),
              ),
            ),
            //right side
            const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                VideoActionWidget(icon: Icons.emoji_emotions, title: "Lol"),
                VideoActionWidget(icon: Icons.add, title: "My List"),
                VideoActionWidget(icon: Icons.share, title: "Share"),
                VideoActionWidget(icon: Icons.play_arrow, title: "Play"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(icon, color: kwhiteColor),
          Text(title),
        ],
      ),
    );
  }
}
