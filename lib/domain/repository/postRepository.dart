import 'package:project_from_figma/data/postAPI.dart';

import '../emptity/post.dart';

class PostRepository {
  final PostAPI networkDataSource;

  PostRepository(this.networkDataSource);

  Future<List<Post>> getPost() {
    return networkDataSource.getPosts();
  }
}
