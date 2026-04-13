// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Category _$CategoryFromJson(Map<String, dynamic> json) => _Category(
  id: (json['id'] as num).toInt(),
  categoryName: json['category_name'] as String,
  categoryNameAscii: json['category_name_ascii'] as String,
  attributeOrder: json['attribute_order'] as String,
  brands: (json['brands'] as List<dynamic>)
      .map((e) => Brand.fromJson(e as Map<String, dynamic>))
      .toList(),
  attributes: (json['attributes'] as List<dynamic>)
      .map((e) => CategoryAttribute.fromJson(e as Map<String, dynamic>))
      .toList(),
  tags: json['tags'] as List<dynamic>,
);

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
  'id': instance.id,
  'category_name': instance.categoryName,
  'category_name_ascii': instance.categoryNameAscii,
  'attribute_order': instance.attributeOrder,
  'brands': instance.brands,
  'attributes': instance.attributes,
  'tags': instance.tags,
};
