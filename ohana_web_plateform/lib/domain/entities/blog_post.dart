class BlogPost {
  final int id;
  final String title;
  final String author;
  final DateTime creationDate;
  final DateTime? updateDate;
  final String contentText;
  const BlogPost(
      {required this.id,
      required this.title,
      required this.author,
      required this.creationDate,
      this.updateDate,
      required this.contentText});
}
