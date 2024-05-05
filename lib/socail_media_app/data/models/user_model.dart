// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:social_media_app/socail_media_app/domain/entities/user_entitiy.dart';

class UserModel extends UserEntity {
  const UserModel(
      {required super.userId,
      required super.username,
      required super.email,
      required super.password,
      required super.name,
      required super.profilePicture,
      required super.registerComplated});

  static const empty = UserModel(
    userId: "",
    username: "",
    email: "",
    password: "",
    name: "",
    profilePicture: "",
    registerComplated: false,
  );

  @override
  UserModel copyWith({
    String? userId,
    String? username,
    String? email,
    String? password,
    String? name,
    String? profilePicture,
    bool? registerComplated,
  }) {
    return UserModel(
      userId: userId ?? this.userId,
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
      name: name ?? this.name,
      profilePicture: profilePicture ?? this.profilePicture,
      registerComplated: registerComplated ?? this.registerComplated,
    );
  }

  @override
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

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      userId: map["userId"],
      username: map["username"],
      email: map["email"],
      password: map["password"],
      name: map["name"],
      profilePicture: map["profilePicture"],
      registerComplated: map["registerComplated"],
    );
  }

  factory UserModel.fromEntity(UserEntity entity) {
    return UserModel(
      userId: entity.userId,
      username: entity.username,
      email: entity.email,
      password: entity.password,
      name: entity.name,
      profilePicture: entity.profilePicture,
      registerComplated: entity.registerComplated,
    );
  }

  UserEntity toEntity() {
    return UserEntity(
      userId: userId,
      username: username,
      email: email,
      password: password,
      name: name,
      profilePicture: profilePicture,
      registerComplated: registerComplated,
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
