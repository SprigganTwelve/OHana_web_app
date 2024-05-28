import 'package:flutter/material.dart';
import 'package:ohana_web_plateform/domain/entities/blog_post.dart';

class BlogPostView extends StatefulWidget {
  final BlogPost blog;
  const BlogPostView({super.key, required this.blog});

  @override
  State<BlogPostView> createState() => _BlogPostViewState();
}

class _BlogPostViewState extends State<BlogPostView> {
  @override
  Widget build(BuildContext context) {
    // TODO : affichage du blog
    return const Placeholder();
  }
}
