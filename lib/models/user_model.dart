import 'dart:convert';

class UserModel {
  final String name;
  final String userId;
  final String emailId;
  final String profileImage;
  final String deviceToken;
  UserModel({
    required this.name,
    required this.userId,
    required this.emailId,
    required this.profileImage,
    required this.deviceToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'userId': userId,
      'emailId': emailId,
      'profileImage': profileImage,
      'deviceToken': deviceToken,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] as String,
      userId: map['userId'] as String,
      emailId: map['emailId'] as String,
      profileImage: map['profileImage'] as String,
      deviceToken: map['deviceToken'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
