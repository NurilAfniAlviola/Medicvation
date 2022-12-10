class User{
  final String email;
  final String username;
  final String password;

  User({required this.email, required this.username, required this.password});

  factory User.fromJson(Map map) {
    return User(email: map['email'],
        username: map['username'], password: map['password']);
  }
}