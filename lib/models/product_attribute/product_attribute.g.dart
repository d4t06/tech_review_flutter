// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductAttribute _$ProductAttributeFromJson(Map<String, dynamic> json) =>
    _ProductAttribute(
      id: (json['id'] as num).toInt(),
      productId: (json['product_id'] as num).toInt(),
      categoryAttributeId: (json['category_attribute_id'] as num).toInt(),
      value: json['value'] as String,
    );

Map<String, dynamic> _$ProductAttributeToJson(_ProductAttribute instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'category_attribute_id': instance.categoryAttributeId,
      'value': instance.value,
    };
