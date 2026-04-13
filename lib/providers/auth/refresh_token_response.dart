// To parse this JSON data, do
//
//     final refreshTokenResponse = refreshTokenResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:tech_review/models/user/user.dart';

part 'refresh_token_response.freezed.dart';
part 'refresh_token_response.g.dart';

RefreshTokenResponse refreshTokenResponseFromJson(String str) => RefreshTokenResponse.fromJson(json.decode(str));

String refreshTokenResponseToJson(RefreshTokenResponse data) => json.encode(data.toJson());

@freezed
abstract class RefreshTokenResponse with _$RefreshTokenResponse {
    const factory RefreshTokenResponse({
        @JsonKey(name: "token")
        required String token,
        @JsonKey(name: "user")
        required User user,
    }) = _RefreshTokenResponse;

    factory RefreshTokenResponse.fromJson(Map<String, dynamic> json) => _$RefreshTokenResponseFromJson(json);
}