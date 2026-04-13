// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'description.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Description _$DescriptionFromJson(Map<String, dynamic> json) => _Description(
  productId: (json['product_id'] as num).toInt(),
  content: json['content'] as String,
);

Map<String, dynamic> _$DescriptionToJson(_Description instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'content': instance.content,
    };
