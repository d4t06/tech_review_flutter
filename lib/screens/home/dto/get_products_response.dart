// To parse this JSON data, do
//
//     final getProductsResponse = getProductsResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:tech_review/models/product_list/product_list.dart';

part 'get_products_response.freezed.dart';
part 'get_products_response.g.dart';

GetProductsResponse getProductsResponseFromJson(String str) => GetProductsResponse.fromJson(json.decode(str));

String getProductsResponseToJson(GetProductsResponse data) => json.encode(data.toJson());

@freezed
abstract class GetProductsResponse with _$GetProductsResponse {
    const factory GetProductsResponse({
        @JsonKey(name: "count")
        required int count,
        @JsonKey(name: "page")
        required int page,
        @JsonKey(name: "page_size")
        required int pageSize,
        @JsonKey(name: "products")
        required List<ProductList> products,
    }) = _GetProductsResponse;

    factory GetProductsResponse.fromJson(Map<String, dynamic> json) => _$GetProductsResponseFromJson(json);
}

