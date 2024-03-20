import 'package:flutter/material.dart';

import 'package:netflix_clone/core/consts.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          kwidth,
          Text(
            title!,
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.cast,
                color: Colors.white,
              )),
          Container(
            color: Colors.blue,
            height: 25,
            width: 25,
          ),
          kwidth
        ],
      ),
    );
  }
}
