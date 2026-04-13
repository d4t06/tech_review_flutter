// To parse this JSON data, do
//
//     final productDetail = productDetailFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_review/models/description/description.dart';
import 'package:tech_review/models/feature/feature.dart';
import 'package:tech_review/models/product_attribute/product_attribute.dart';
import 'package:tech_review/models/product_tag/product_tag.dart';
import 'dart:convert';


part 'product_detail.freezed.dart';
part 'product_detail.g.dart';

ProductDetail productDetailFromJson(String str) => ProductDetail.fromJson(json.decode(str));

String productDetailToJson(ProductDetail data) => json.encode(data.toJson());

@freezed
abstract class ProductDetail with _$ProductDetail {
    const factory ProductDetail({
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
        @JsonKey(name: "attributes")
        required List<ProductAttribute> attributes,
        @JsonKey(name: "description")
        required Description description,
        @JsonKey(name: "product_tags")
        required List<ProductTag> productTags,
    }) = _ProductDetail;

    factory ProductDetail.fromJson(Map<String, dynamic> json) => _$ProductDetailFromJson(json);
}