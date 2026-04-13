// To parse this JSON data, do
//
//     final productTag = productTagFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:tech_review/models/tag/tag.dart';

part 'product_tag.freezed.dart';
part 'product_tag.g.dart';

ProductTag productTagFromJson(String str) => ProductTag.fromJson(json.decode(str));

String productTagToJson(ProductTag data) => json.encode(data.toJson());

@freezed
abstract class ProductTag with _$ProductTag {
    const factory ProductTag({
        @JsonKey(name: "product_id")
        required int productId,
        @JsonKey(name: "tag_id")
        required int tagId,
        @JsonKey(name: "tag")
        required Tag tag,
    }) = _ProductTag;

    factory ProductTag.fromJson(Map<String, dynamic> json) => _$ProductTagFromJson(json);
}