import 'package:get/get_connect/http/src/request/request.dart';

class BlogPost {
  final int id;
  final String title;
  final String author;
  final DateTime creationDate;
  final DateTime? updateDate;
  final List content;
  final String description;
  final List keyWords;
  const BlogPost(
      {required this.id,
      required this.title,
      required this.author,
      required this.creationDate,
      this.updateDate,
      required this.content,
      required this.description,
      required this.keyWords});

  factory BlogPost.fromJson(Map<String, dynamic> json) => BlogPost(
        id: json["id"],
        title: json['title'],
        author: json['author'],
        creationDate: json['creationDate'],
        content: json['content'],
        description: json["description"],
        updateDate: json["updateDate"],
        keyWords: json["keywords"],
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'author': author,
      'creationDate': creationDate,
      'content': content,
      'description': description,
      'updateDate': updateDate,
      'keyWords': keyWords
    };
  }
}

//Child of Blog Content

class Paragraph {
  final String type = 'PARAGRAPH';
  final String? title;
  final String textContent;
  final List boldTextList;
  final bool boldListTextMode;
  const Paragraph(
      {this.title,
      required this.textContent,
      required this.boldTextList,
      required this.boldListTextMode});
  factory Paragraph.fromJson(Map<String, dynamic> json) => Paragraph(
      title: json['title'],
      textContent: json['textContent'],
      boldTextList: json['boldTextList'],
      boldListTextMode: json['boldListTextMode']);
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'type': type,
      'textContent': textContent,
      'boldTextList': boldTextList,
      'boldListTextMode': boldListTextMode,
    };
  }
}

class TextList {
  final String type = 'TEXTLIST';
  final String? title;
  final String textList;
  final String textColor;
  final String? icon;
  const TextList(
      {this.title, required this.textList, required this.textColor, this.icon});
  factory TextList.fromJson(Map<String, dynamic> json) => TextList(
        title: json['title'],
        textList: json['textList'],
        textColor: json['color'],
      );
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'title': title,
      'textList': textList,
      'textColor': textColor,
      'icon': icon,
    };
  }
}

class PostImage {
  final String type = 'IMAGE';
  final String? title;
  final String path;
  const PostImage({
    required this.path,
    required this.title,
  });
  factory PostImage.fromJson(Map<String, dynamic> json) =>
      PostImage(title: json['title'], path: json['path']);
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'title': title,
      'path': path,
    };
  }
}

class PostVideo {
  final String type = 'VIDEO';
  final String? title;
  final String path;
  const PostVideo({
    required this.path,
    required this.title,
  });
  factory PostVideo.fromJson(Map<String, dynamic> json) =>
      PostVideo(title: json['title'], path: json['path']);
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'title': title,
      'path': path,
    };
  }
}
