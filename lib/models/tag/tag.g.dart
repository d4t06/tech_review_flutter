// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Tag _$TagFromJson(Map<String, dynamic> json) => _Tag(
  id: (json['id'] as num).toInt(),
  categoryId: (json['category_id'] as num).toInt(),
  name: json['name'] as String,
);

Map<String, dynamic> _$TagToJson(_Tag instance) => <String, dynamic>{
  'id': instance.id,
  'category_id': instance.categoryId,
  'name': instance.name,
};
