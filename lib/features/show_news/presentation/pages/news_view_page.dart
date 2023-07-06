import 'package:flutter/material.dart';
import 'package:only_good_news/core/constants/palette.dart';
import 'package:only_good_news/features/show_news/domain/entities/news_info.dart';

class NewsViewPage extends StatelessWidget {
  final NewsInfo newsInfo;

  const NewsViewPage({Key? key, required this.newsInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      appBar: AppBar(
        backgroundColor: Palette.background,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Palette.deepBlue,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                newsInfo != null ? newsInfo.title! : 'News title',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Palette.deepBlue,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 300,
                color: Palette.lightGrey,
                child: newsInfo != null
                    ? Image.network(
                        newsInfo.imageUrl!,
                        fit: BoxFit.cover,
                      )
                    : const SizedBox(),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                getDateInDDMMYYFormat(newsInfo.dateTime),
                style: const TextStyle(color: Palette.lightGrey, fontSize: 14),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                newsInfo.author != null ? newsInfo.author! : 'Author',
                style: const TextStyle(color: Palette.lightGrey, fontSize: 14),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                newsInfo.content != null ? newsInfo.content! : 'No content',
                style: const TextStyle(color: Palette.deepBlue, fontSize: 14),
              ),
              const SizedBox(
                height: 32,
              )
            ],
          ),
        ),
      ),
    );
  }

  String getDateInDDMMYYFormat(DateTime dateTime) =>
      '${dateTime.day}/${dateTime.month}/${dateTime.year}';
}
