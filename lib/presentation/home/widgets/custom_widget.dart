import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {super.key,
      required this.icon,
      this.iconsize,
      this.fontsize,
      required this.title});
  final IconData icon;
  final String title;
  final double? fontsize;
  final double? iconsize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kButtonColorWhite,
          size: iconsize,
        ),
        Text(
          title,
          style: TextStyle(fontSize: fontsize),
        )
      ],
    );
  }
}
