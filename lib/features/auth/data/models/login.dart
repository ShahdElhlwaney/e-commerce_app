import 'package:json_annotation/json_annotation.dart';
class Login {
  bool status;
  String message;
  UserData? data;
  Login({required this.status, required this.message, required this.data});
  factory Login.fromJson(Map<String,dynamic>json){
    return Login(
        status: json['status'],
        message: json['message'],
        data:json['data'] != null ?
        UserData.fromJson(json['data']) : null
    );
  }
}
class UserData {
  String name;
  String phone;
  String email;
  int id;
  String image;
  String token;
  int points;
  int credit;
  UserData({
    required this.name,
    required this.phone,
    required this.email,
    required this.id,
    required this.image,
    required this.token,
    required this.points,
    required this.credit
  });
  factory UserData.fromJson(Map<String,dynamic>json){
    return UserData(
        name: json['name'],
        phone: json['phone'],
        email: json['email'],
        id: json['id'],
        image: json['image'],
        token: json['token'],
      points: json['points'],
      credit: json['credit']
    );
  }

}
