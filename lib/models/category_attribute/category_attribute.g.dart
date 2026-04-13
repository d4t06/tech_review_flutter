// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryAttribute _$CategoryAttributeFromJson(Map<String, dynamic> json) =>
    _CategoryAttribute(
      id: (json['id'] as num).toInt(),
      categoryId: (json['category_id'] as num).toInt(),
      attributeNameAscii: json['attribute_name_ascii'] as String,
      attributeName: json['attribute_name'] as String,
      represent: json['represent'] as bool,
    );

Map<String, dynamic> _$CategoryAttributeToJson(_CategoryAttribute instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_id': instance.categoryId,
      'attribute_name_ascii': instance.attributeNameAscii,
      'attribute_name': instance.attributeName,
      'represent': instance.represent,
    };
