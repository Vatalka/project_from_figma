import 'package:project_from_figma/domain/emptity/users.dart';

import '../domain/emptity/post.dart';

class PostAPI {
  Future<List<Post>> getPosts() async {
    return List.generate(
        10,
        (index) => Post(
            author: User(
                firstName: 'firstName',
                lastName: 'lastName',
                photoURL: 'photoURL',
                lastOnlineIn: DateTime.now()),
            text: 'text',
            likeCount: 10,
            images: []));
  }
}
