// To parse this JSON data, do
//
//     final productList = productListFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_review/models//feature/feature.dart';
import 'dart:convert';

import 'package:tech_review/models/product_tag/product_tag.dart';

part 'product_list.freezed.dart';
part 'product_list.g.dart';

ProductList productListFromJson(String str) => ProductList.fromJson(json.decode(str));

String productListToJson(ProductList data) => json.encode(data.toJson());

@freezed
abstract class ProductList with _$ProductList {
    const factory ProductList({
        @JsonKey(name: "id")
        required int id,
        @JsonKey(name: "product_name")
        required String productName,
        @JsonKey(name: "product_name_ascii")
        required String productNameAscii,
        @JsonKey(name: "image_url")
        required String imageUrl,
        @JsonKey(name: "category_id")
        required int categoryId,
        @JsonKey(name: "brand_id")
        required int brandId,
        @JsonKey(name: "created_at")
        required DateTime createdAt,
        @JsonKey(name: "features")
        required List<Feature> features,
        @JsonKey(name: "product_tags")
        required List<ProductTag> productTags,
    }) = _ProductList;

    factory ProductList.fromJson(Map<String, dynamic> json) => _$ProductListFromJson(json);
}