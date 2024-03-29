import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/presentation/main_page/screen_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clone Netflix',
      theme: ThemeData(
        scaffoldBackgroundColor: kblackcolor,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        textTheme: const TextTheme(
          bodySmall: TextStyle(color: kwhiteColor),
          bodyMedium: TextStyle(color: kwhiteColor),
        ),
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      home: ScreenMain(),
    );
  }
}
