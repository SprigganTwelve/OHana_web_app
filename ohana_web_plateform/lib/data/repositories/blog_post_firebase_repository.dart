import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ohana_web_plateform/domain/entities/blog_post.dart';
import 'package:ohana_web_plateform/domain/repositories/blog_post_repository.dart';

class BlogPostFirebaseRepository implements BlogPostRepository {
  @override
  List<BlogPost> getAllBlogPosts() {
    // TODO: implement getAllBlogPosts
    throw UnimplementedError();
  }
}
