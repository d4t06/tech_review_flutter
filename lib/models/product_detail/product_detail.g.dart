// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductDetail _$ProductDetailFromJson(Map<String, dynamic> json) =>
    _ProductDetail(
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
      attributes: (json['attributes'] as List<dynamic>)
          .map((e) => ProductAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: Description.fromJson(
        json['description'] as Map<String, dynamic>,
      ),
      productTags: (json['product_tags'] as List<dynamic>)
          .map((e) => ProductTag.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductDetailToJson(_ProductDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_name': instance.productName,
      'product_name_ascii': instance.productNameAscii,
      'image_url': instance.imageUrl,
      'category_id': instance.categoryId,
      'brand_id': instance.brandId,
      'created_at': instance.createdAt.toIso8601String(),
      'features': instance.features,
      'attributes': instance.attributes,
      'description': instance.description,
      'product_tags': instance.productTags,
    };
