// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductList _$ProductListFromJson(Map<String, dynamic> json) => _ProductList(
  id: (json['id'] as num).toInt(),
  productName: json['product_name'] as String,
  productNameAscii: json['product_name_ascii'] as String,
  imageUrl: json['image_url'] as String,
  categoryId: (json['category_id'] as num).toInt(),
  brandId: (json['brand_id'] as num).toInt(),
  createdAt: DateTime.parse(json['created_at'] as String),
  features: (json['features'] as List<dynamic>)
      .map((e) => Feature.fromJson(e as Map<String, dynamic>))
      .toList(),
  productTags: (json['product_tags'] as List<dynamic>)
      .map((e) => ProductTag.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ProductListToJson(_ProductList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_name': instance.productName,
      'product_name_ascii': instance.productNameAscii,
      'image_url': instance.imageUrl,
      'category_id': instance.categoryId,
      'brand_id': instance.brandId,
      'created_at': instance.createdAt.toIso8601String(),
      'features': instance.features,
      'product_tags': instance.productTags,
    };
