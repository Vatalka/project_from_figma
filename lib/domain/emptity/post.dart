import 'users.dart';

class Post {
  final User author;
  final String text;
  final int likeCount;
  final List<String> images;

  Post(
      {required this.author,
      required this.text,
      required this.likeCount,
      required this.images});
}
