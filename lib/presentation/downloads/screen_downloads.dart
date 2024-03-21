import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/core/consts.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _widgetsList = [const _SmartDownloads(), Section2(), const Section3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(title: "Downloads"),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) => _widgetsList[index],
          separatorBuilder: (context, index) => const SizedBox(
            height: 25,
          ),
          itemCount: _widgetsList.length,
        ));
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        kwidth,
        Icon(
          Icons.settings,
          color: kwhiteColor,
        ),
        kwidth,
        Text("Smart Downloads")
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});
  final List imageList = [
    kMainImage,
    kMainImage,
    kMainImage,
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        const Text(
          "Introducing Downloads For You",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        kheight,
        const Text(
          "We will download personalized selection of\n movies and shows for you , so there's \nalways something to watch on your \nphone.",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(.5),
                  radius: size.width * 0.4,
                ),
              ),
              DownloadsImages(
                imageList: imageList[0],
                angle: -20,
                margin: const EdgeInsets.only(
                  right: 140,
                  bottom: 50,
                ),
                size: Size(size.width * .38, size.width * .58),
              ),
              DownloadsImages(
                  imageList: imageList[1],
                  angle: 20,
                  margin: const EdgeInsets.only(left: 140, bottom: 50),
                  size: Size(size.width * .38, size.width * .58)),
              DownloadsImages(
                  imageList: imageList[2],
                  angle: 0,
                  margin: const EdgeInsets.only(bottom: 15),
                  size: Size(size.width * .43, size.width * .65))
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: SizedBox(
            width: double.infinity,
            child: MaterialButton(
              onPressed: () {},
              color: kButtonColorBlue,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Set Up",
                  style: TextStyle(
                      color: kwhiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        // kheight,
        MaterialButton(
          onPressed: () {},
          color: kButtonColorWhite,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "See What Can Cownload",
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    color: kblackcolor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class DownloadsImages extends StatelessWidget {
  const DownloadsImages(
      {super.key,
      required this.imageList,
      required this.angle,
      required this.margin,
      required this.size});

  final String imageList;
  final int? angle;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle! * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.black,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              imageList,
            ),
          ),
        ),
      ),
    );
  }
}
