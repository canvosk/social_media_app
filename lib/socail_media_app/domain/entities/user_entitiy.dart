// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String userId;
  final String username;
  final String email;
  final String password;
  final String name;
  final String profilePicture;
  final bool registerComplated;

  const UserEntity({
    required this.userId,
    required this.username,
    required this.email,
    required this.password,
    required this.name,
    required this.profilePicture,
    required this.registerComplated,
  });

  static const empty = UserEntity(
    userId: "",
    username: "",
    email: "",
    password: "",
    name: "",
    profilePicture: "",
    registerComplated: false,
  );

  UserEntity copyWith({
    String? userId,
    String? username,
    String? email,
    String? password,
    String? name,
    String? profilePicture,
    bool? registerComplated,
  }) {
    return UserEntity(
      userId: userId ?? this.userId,
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
      name: name ?? this.name,
      profilePicture: profilePicture ?? this.profilePicture,
      registerComplated: registerComplated ?? this.registerComplated,
    );
  }

  Map<String, Object?> toMap() {
    return {
      "userId": userId,
      "username": username,
      "email": email,
      "password": password,
      "name": name,
      "profilePicture": profilePicture,
      "registerComplated": registerComplated,
    };
  }

  static UserEntity fromMap(Map<String, dynamic> map) {
    return UserEntity(
      userId: map["userId"],
      username: map["username"],
      email: map["email"],
      password: map["password"],
      name: map["name"],
      profilePicture: map["profilePicture"],
      registerComplated: map["registerComplated"],
    );
  }

  @override
  List<Object?> get props => [
        userId,
        username,
        email,
        password,
        name,
        profilePicture,
        registerComplated
      ];
}
