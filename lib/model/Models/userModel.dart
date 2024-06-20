import 'package:final_project/core/api/end_ponits.dart';

class userModel {
  int id;
  String firstName;
  String lastName;
  String username;
  String email;
  String role;
  String? createdAt;
  String? updatedAt;
  String dob;
  String gender;
  String? img;
  bool? active;

  userModel(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.username,
      required this.email,
      required this.role,
      required this.dob,
      required this.gender,
      required createdAt,
      required updatedAt,
      required img,
      required active});

  factory userModel.fromJson(json) {
    return userModel(
      id: json['data']['user']['${ApiKey.id}'],
      username: json['data']['user']['${ApiKey.userName}'],
      firstName: json['data']['user']['${ApiKey.firstName}'],
      lastName: json['data']['user']['${ApiKey.lastName}'],
      email: json['data']['user']['${ApiKey.email}'],
      role: json['data']['user']['${ApiKey.role}'],
      createdAt: json['data']['user']['createdAt'],
      updatedAt: json['data']['user']['updatedAt'],
      dob: json['data']['user']['dob'] ?? "",
      gender: json['data']['user']['${ApiKey.gender}'],
      img: json['data']['user']['${ApiKey.image}'],
      active: json['data']['user']['active'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'user_name': username,
      'email': email,
      'role': role,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'dob': dob,
      'gender': gender,
      'img': img,
      'active': active,
    };
  }
}
