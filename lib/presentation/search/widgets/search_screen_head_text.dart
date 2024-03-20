import 'package:flutter/material.dart';

class SearchScreenHeadText extends StatelessWidget {
  final String title;
  const SearchScreenHeadText({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
