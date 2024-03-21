import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors.dart';

import 'widgets/coming_soon_widget.dart';
import 'widgets/everyones_watching_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: false,
            title: const Text(
              'New & Hot',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.cast,
                  size: 30,
                  color: kwhiteColor,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                width: 30,
                height: 30,
                color: Colors.blue,
              )
            ],
            bottom: TabBar(
              isScrollable: true,
              unselectedLabelColor: kwhiteColor,
              labelColor: kblackcolor,
              overlayColor: MaterialStateProperty.all(
                Colors.transparent,
              ),
              labelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              indicator: BoxDecoration(
                color: kwhiteColor,
                borderRadius: BorderRadius.circular(30),
              ),
              tabs: const [
                Tab(text: '🍿 Coming Soon'),
                Tab(text: '👀 Everyone\'s watching'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              ComingSoonWidget(),
              EveryonesWatchingWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
