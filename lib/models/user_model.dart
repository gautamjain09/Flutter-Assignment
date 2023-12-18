import 'dart:convert';

class UserModel {
  final String userId;
  final String name;
  final String gender;
  final String emailId;
  final String phoneNumber;
  final String profileImage;
  final String dateOfBirth;
  final String placeOfBirth;
  final String timeOfBirth;
  final String joiningTime;
  final bool privateProfile;
  UserModel({
    required this.userId,
    required this.name,
    required this.gender,
    required this.emailId,
    required this.phoneNumber,
    required this.profileImage,
    required this.dateOfBirth,
    required this.placeOfBirth,
    required this.timeOfBirth,
    required this.joiningTime,
    required this.privateProfile,
  });

  UserModel copyWith({
    String? userId,
    String? name,
    String? gender,
    String? emailId,
    String? phoneNumber,
    String? profileImage,
    String? dateOfBirth,
    String? placeOfBirth,
    String? timeOfBirth,
    String? joiningTime,
    bool? privateProfile,
  }) {
    return UserModel(
      userId: userId ?? this.userId,
      name: name ?? this.name,
      gender: gender ?? this.gender,
      emailId: emailId ?? this.emailId,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      profileImage: profileImage ?? this.profileImage,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      placeOfBirth: placeOfBirth ?? this.placeOfBirth,
      timeOfBirth: timeOfBirth ?? this.timeOfBirth,
      joiningTime: joiningTime ?? this.joiningTime,
      privateProfile: privateProfile ?? this.privateProfile,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userId': userId,
      'name': name,
      'gender': gender,
      'emailId': emailId,
      'phoneNumber': phoneNumber,
      'profileImage': profileImage,
      'dateOfBirth': dateOfBirth,
      'placeOfBirth': placeOfBirth,
      'timeOfBirth': timeOfBirth,
      'joiningTime': joiningTime,
      'privateProfile': privateProfile,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      userId: map['userId'] as String,
      name: map['name'] as String,
      gender: map['gender'] as String,
      emailId: map['emailId'] as String,
      phoneNumber: map['phoneNumber'] as String,
      profileImage: map['profileImage'] as String,
      dateOfBirth: map['dateOfBirth'] as String,
      placeOfBirth: map['placeOfBirth'] as String,
      timeOfBirth: map['timeOfBirth'] as String,
      joiningTime: map['joiningTime'] as String,
      privateProfile: map['privateProfile'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(userId: $userId, name: $name, gender: $gender, emailId: $emailId, phoneNumber: $phoneNumber, profileImage: $profileImage, dateOfBirth: $dateOfBirth, placeOfBirth: $placeOfBirth, timeOfBirth: $timeOfBirth, joiningTime: $joiningTime, privateProfile: $privateProfile)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.userId == userId &&
        other.name == name &&
        other.gender == gender &&
        other.emailId == emailId &&
        other.phoneNumber == phoneNumber &&
        other.profileImage == profileImage &&
        other.dateOfBirth == dateOfBirth &&
        other.placeOfBirth == placeOfBirth &&
        other.timeOfBirth == timeOfBirth &&
        other.joiningTime == joiningTime &&
        other.privateProfile == privateProfile;
  }

  @override
  int get hashCode {
    return userId.hashCode ^
        name.hashCode ^
        gender.hashCode ^
        emailId.hashCode ^
        phoneNumber.hashCode ^
        profileImage.hashCode ^
        dateOfBirth.hashCode ^
        placeOfBirth.hashCode ^
        timeOfBirth.hashCode ^
        joiningTime.hashCode ^
        privateProfile.hashCode;
  }
}
