import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_response_body.g.dart';

@JsonSerializable()
class RegisterResponseBody {
  final String? message;
  @JsonKey(name: "data")
  final UserData? userData;
  final bool? status;
  final int? code;

  RegisterResponseBody({this.message, this.userData, this.status, this.code});

  factory RegisterResponseBody.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseBodyFromJson(json);
}

@JsonSerializable()
class UserData {
  final String? token;
  @JsonKey(name: "username")
  final String? userName;

  UserData({this.token, this.userName});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
