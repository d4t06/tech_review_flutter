// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Brand _$BrandFromJson(Map<String, dynamic> json) => _Brand(
  id: (json['id'] as num).toInt(),
  brandName: json['brand_name'] as String,
  brandNameAscii: json['brand_name_ascii'] as String,
  imageUrl: json['image_url'] as String,
  categoryId: (json['category_id'] as num).toInt(),
);

Map<String, dynamic> _$BrandToJson(_Brand instance) => <String, dynamic>{
  'id': instance.id,
  'brand_name': instance.brandName,
  'brand_name_ascii': instance.brandNameAscii,
  'image_url': instance.imageUrl,
  'category_id': instance.categoryId,
};
