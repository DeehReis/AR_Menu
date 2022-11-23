class User {
  int? id;
  String? username;
  String? email;
  String? imageUrl;

  User.empty();

  User(
      {required this.id,
      required this.username,
      required this.email,
      required this.imageUrl});

  User.fromMap(Map<String, dynamic> res)
      : id = res["id"],
        username = res["username"],
        email = res["email"],
        imageUrl = res["imageUrl"];
}
