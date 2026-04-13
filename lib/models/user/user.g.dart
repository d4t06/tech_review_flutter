// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  username: json['username'] as String,
  role: json['role'] as String,
  id: (json['id'] as num).toInt(),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'username': instance.username,
  'role': instance.role,
  'id': instance.id,
};
