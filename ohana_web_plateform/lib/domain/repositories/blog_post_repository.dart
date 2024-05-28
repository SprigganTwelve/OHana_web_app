import 'package:ohana_web_plateform/domain/entities/blog_post.dart';

abstract class BlogPostRepository {
  List<BlogPost> getAllBlogPosts();

  BlogPost getBlogPostById(int id);
}
