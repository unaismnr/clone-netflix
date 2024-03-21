import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/core/consts.dart';

import '../../home/widgets/custom_widget.dart';
import 'video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
        itemBuilder: (context, index) => const _ComingSoonList(),
      ),
    );
  }
}

class _ComingSoonList extends StatelessWidget {
  const _ComingSoonList();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 40),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 35,
            child: Column(
              children: [
                Text(
                  'FEB',
                  style: TextStyle(fontSize: 18, color: kGreyColor),
                ),
                Text(
                  '20',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                )
              ],
            ),
          ),
          kwidth,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VideoWidget(),
                kheight,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tall Girls2",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    CustomButtonWidget(
                      icon: Icons.notifications,
                      title: 'Remind Me',
                      iconsize: 20,
                      fontsize: 12,
                    ),
                    kwidth,
                    CustomButtonWidget(
                      icon: Icons.info_outline,
                      title: 'Info',
                      iconsize: 20,
                      fontsize: 12,
                    ),
                    kwidth,
                  ],
                ),
                Text('Coming on Friday'),
                kheight,
                Text(
                  'Tall Girl 2',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kheight,
                Text(
                  'Landing the lead in the school musical is dream come true for jodi, untill the pressure sends her confidence -- and her relationship -- into a tailspin',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
