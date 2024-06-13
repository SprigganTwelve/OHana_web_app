import 'package:ohana_web_plateform/domain/entities/blog_post.dart';
import 'package:ohana_web_plateform/domain/repositories/blog_post_repository.dart';

class BlogPostLocalRepository implements BlogPostRepository {
  @override
  List<BlogPost> getAllBlogPosts() {
    // TODO: implement getAllBlogPosts
    throw UnimplementedError();
  }

  @override
  BlogPost getBlogPostById(int id) {
    Map<String, dynamic> jsonFile = {
      "id": 1,
      'title': 'Le Monde en pleine révolution',
      'author': 'Dali',
      'creationDate': '29/05/2024',
      'content': [],
      'description': '',
      'updateDate': '29/05/2024',
      'keywords': []
    };
    return BlogPost.fromJson(jsonFile);
  }
}
