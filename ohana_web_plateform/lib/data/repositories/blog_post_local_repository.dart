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
    return BlogPost(
        id: 1,
        title: "Le monde en pleine révolution",
        author: "Zouayobo DALI",
        creationDate: DateTime(2024, 5, 28),
        contentText:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.");
  }
}
