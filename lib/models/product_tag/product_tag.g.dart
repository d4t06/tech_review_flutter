// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductTag _$ProductTagFromJson(Map<String, dynamic> json) => _ProductTag(
  productId: (json['product_id'] as num).toInt(),
  tagId: (json['tag_id'] as num).toInt(),
  tag: Tag.fromJson(json['tag'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ProductTagToJson(_ProductTag instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'tag_id': instance.tagId,
      'tag': instance.tag,
    };
