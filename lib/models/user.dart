class User {
  User({required this.id, this.profileImageUrl = ''});
  final String id;
  final String profileImageUrl;

  factory User.fromJson(dynamic json) {
    return User(
        id: json['id'] as String,
        profileImageUrl: json['src'] != null ? json['src'] as String : '');
  }
}
