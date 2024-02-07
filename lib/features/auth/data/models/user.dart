

class User{
  String name;
  String phone;
  String email;
  String password;
  String? image;//=;
  User({
    required this.name,
    required this.phone,
    required this.email,
    this.image,
    required this.password
  });
}