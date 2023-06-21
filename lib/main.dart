import 'package:flutter/material.dart';
import 'package:only_good_news/core/constants/palette.dart';
import 'package:only_good_news/features/show_news/presentation/pages/news_view_page.dart';

import 'features/show_news/presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme:
            const ColorScheme.light().copyWith(secondary: Palette.deepBlue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
