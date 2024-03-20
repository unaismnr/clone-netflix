import 'package:flutter/material.dart';
import 'package:netflix_clone/core/consts.dart';

class MainCards extends StatelessWidget {
  const MainCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: 150,
        height: 280,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
              image: NetworkImage(kMainImage), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
