import 'package:flutter/material.dart';
import 'package:only_good_news/core/constants/palette.dart';
import 'package:only_good_news/features/show_news/presentation/components/news_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      appBar: AppBar(
        backgroundColor: Palette.background,
        title: const Text(
          'Only Good News',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Palette.deepBlue),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              cursorColor: Palette.deepBlue,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Palette.lightGrey),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Palette.deepBlue))),
            ),
            SizedBox(height: 16),
            Text(
              'Top News',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Palette.deepBlue,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 16),
            NewsCard(),
          ],
        ),
      ),
    );
  }
}
