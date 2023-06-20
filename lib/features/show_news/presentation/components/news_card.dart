import 'package:flutter/material.dart';
import 'package:only_good_news/core/constants/palette.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: MediaQuery.of(context).size.width - (2 * 16),
      child: Stack(
        children: [
          Container(
            height: 260,
            color: Palette.lightGrey,
            child: Image.network(
              'https://www.applesfromny'
              '.com/wp-content/uploads/2020/05/20Ounce_NYAS-Apples2'
              '.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 0,
            child: Container(
              height: 80,
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2),
                  blurRadius: 4,
                  color: Colors.black12,
                ),
              ]),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(
                  child: Text(
                    'News Title',
                    maxLines: 2,
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 18,
                      color: Palette.deepBlue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}