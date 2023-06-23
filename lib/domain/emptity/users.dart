class User {
  final String firstName;
  final String lastName;
  final String photoURL;
  final DateTime lastOnlineIn;

  User(
      {required this.firstName,
      required this.lastName,
      required this.photoURL,
      required this.lastOnlineIn});
}
