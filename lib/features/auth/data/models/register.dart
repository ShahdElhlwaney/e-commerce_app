


class Register {
  bool status;
  String message;
  UserDat? data;
  Register({required this.status, required this.message, required this.data});
  factory Register.fromJson(Map<String,dynamic>json){
    return Register(
        status: json['status'],
        message: json['message'],
        data:json['data'] != null ?  UserDat.fromJson(json['data']) : null
    );
  }
}
class UserDat {
  String? name;
  String? phone;
  String? email;
  int? id;
  String? image;
  String? token;
  UserDat({
    required this.name,
    required this.phone,
    required this.email,
    required this.id,
    required this.image,
    required this.token
  });
  factory UserDat.fromJson(Map<String,dynamic>json){
    return UserDat(
        name: json['name'],
        phone: json['phone'],
        email: json['email'],
        id: json['id'],
        image: json['image'],
        token: json['token']
    );
  }

}
