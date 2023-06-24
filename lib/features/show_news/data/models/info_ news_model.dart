import 'package:only_good_news/features/show_news/domain/entities/news_info.dart';

class NewsInfoModel extends NewsInfo {
  NewsInfoModel({
    final String? title,
    final String? author,
    final String? imageUrl,
    final String? content,
    final String? dateTime,
  }) : super(
            title: title,
            author: author,
            imageUrl: imageUrl,
            content: content,
            dateTime: getDataTime(dateTime));

  static DateTime getDataTime(String? dateTime) {
    if (dateTime == null) {
      return DateTime.now();
    } else {
      final DateTime? dateTimeInDateTimeFormat = DateTime.tryParse(dateTime);
      if (dateTimeInDateTimeFormat == null) {
        return DateTime.now();
      } else {
        return dateTimeInDateTimeFormat;
      }
    }
  }

  factory NewsInfoModel.fromMap(Map<String, dynamic> map) {
    return NewsInfoModel(
      title: map['title'],
      author: map['author'],
      imageUrl: map['urlToImage'],
      content: map['content'],
      dateTime: map['publishAt'],
    );
  }
}
