class NewsInfo {
  final String? title;
  final String? author;
  final String? imageUrl;
  final String? content;
  final DateTime dateTime;

  NewsInfo({
    this.title,
    this.author,
    this.imageUrl,
    this.content,
    required this.dateTime,
  });
}
