import 'package:flutter_starter/models/base.model.dart';
import 'package:hive/hive.dart';
part 'appuser.model.g.dart';

@HiveType(typeId: 0)
class AppUser extends HiveObject implements BaseModel {
  @HiveField(0)
  final String? username;
  @HiveField(1)
  final String? email;

  AppUser({
    this.email,
    this.username,
  });

  toJson() {
    return {
      "username": this.username,
      "email": this.email,
    };
  }

  factory AppUser.fromJson(Map<String, dynamic> json) {
    AppUser user = AppUser(
      username: json["usrname"],
      email: json["email"],
    );
    return user;
  }

  @override
  String toString() {
    return '{user:username:$username, email:$email}';
  }
}
