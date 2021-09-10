//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import '../models.dart';

import '../models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: 'id') @Default(null) int? id,
    @JsonKey(name: 'username') @Default(null) String? username,
    @JsonKey(name: 'firstName') @Default(null) String? firstName,
    @JsonKey(name: 'lastName') @Default(null) String? lastName,
    @JsonKey(name: 'email') @Default(null) String? email,
    @JsonKey(name: 'password') @Default(null) String? password,
    @JsonKey(name: 'phone') @Default(null) String? phone,
    @JsonKey(name: 'userStatus') @Default(null) int? userStatus,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
