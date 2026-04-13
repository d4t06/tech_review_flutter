// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LikeProduct _$LikeProductFromJson(Map<String, dynamic> json) => _LikeProduct(
  productId: (json['product_id'] as num).toInt(),
  userId: (json['user_id'] as num).toInt(),
);

Map<String, dynamic> _$LikeProductToJson(_LikeProduct instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'user_id': instance.userId,
    };
