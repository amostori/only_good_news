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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextField(
              style: TextStyle(
                fontSize: 14,
                color: Palette.deepBlue,
              ),
              cursorColor: Palette.deepBlue,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Palette.lightGrey,
                    size: 20,
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Palette.lightGrey,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Palette.lightGrey),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, color: Palette.deepBlue))),
            ),
            const SizedBox(height: 16),
            const Text(
              'Top News',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Palette.deepBlue,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const NewsCard();
                },
              ),
            ),
            //Expanded
            // zajmuje całą
            // dostępną
            // przestrzeń
          ],
        ),
      ),
    );
  }
}
