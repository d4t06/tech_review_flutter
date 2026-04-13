// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetProductsResponse _$GetProductsResponseFromJson(Map<String, dynamic> json) =>
    _GetProductsResponse(
      count: (json['count'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      pageSize: (json['page_size'] as num).toInt(),
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetProductsResponseToJson(
  _GetProductsResponse instance,
) => <String, dynamic>{
  'count': instance.count,
  'page': instance.page,
  'page_size': instance.pageSize,
  'products': instance.products,
};
