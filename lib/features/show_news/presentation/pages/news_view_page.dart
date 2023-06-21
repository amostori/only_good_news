import 'package:flutter/material.dart';
import 'package:only_good_news/core/constants/palette.dart';

class NewsViewPage extends StatelessWidget {
  const NewsViewPage({Key? key}) : super(key: key);

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
              const Text(
                'News title',
                style: TextStyle(
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
                child: Image.network(
                  'https://cdn.britannica.com/22/187222-050-07B17FB6/apples-on-a-tree-branch.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                '8/8/2022',
                style: TextStyle(color: Palette.lightGrey, fontSize: 14),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Author',
                style: TextStyle(color: Palette.lightGrey, fontSize: 14),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Lorem Ipsum is simply dummy text of the printing and '
                'typesetting industry. Lorem Ipsum has been the industrys '
                'standard dummy text ever since the 1500s, when an unknown '
                'printer took a galley of type and scrambled it to make a '
                'type specimen book. It has survived not only five '
                'typesetting industry. Lorem Ipsum has been the industrys '
                'standard dummy text ever since the 1500s, when an unknown '
                'printer took a galley of type and scrambled it to make a '
                'type specimen book. It has survived not only five '
                'centuries, but also the leap into electronic typesetting, '
                'remaining essentially unchanged. It was popularised in the 1960s'
                ' with the release of Letraset sheets containing Lorem Ipsum '
                'passages, and more recently with desktop publishing software '
                'like Aldus PageMaker including versions of Lorem Ipsum.',
                style: TextStyle(color: Palette.deepBlue, fontSize: 14),
              ),
              SizedBox(
                height: 32,
              )
            ],
          ),
        ),
      ),
    );
  }
}
