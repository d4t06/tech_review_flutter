// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:tech_review/models/user/user.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

@freezed
abstract class LoginResponse with _$LoginResponse {
    const factory LoginResponse({
        @JsonKey(name: "token")
        required String token,
        @JsonKey(name: "refresh_token")
        required String refreshToken,
        @JsonKey(name: "user")
        required User? user,
    }) = _LoginResponse;

    factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);
}