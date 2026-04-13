// To parse this JSON data, do
//
//     final category = categoryFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:tech_review/models/brand/brand.dart';
import 'package:tech_review/models/category_attribute/category_attribute.dart';

part 'category.freezed.dart';
part 'category.g.dart';

Category categoryFromJson(String str) => Category.fromJson(json.decode(str));

String categoryToJson(Category data) => json.encode(data.toJson());

@freezed
abstract class Category with _$Category {
    const factory Category({
        @JsonKey(name: "id")
        required int id,
        @JsonKey(name: "category_name")
        required String categoryName,
        @JsonKey(name: "category_name_ascii")
        required String categoryNameAscii,
        @JsonKey(name: "attribute_order")
        required String attributeOrder,
        @JsonKey(name: "brands")
        required List<Brand> brands,
        @JsonKey(name: "attributes")
        required List<CategoryAttribute> attributes,
        @JsonKey(name: "tags")
        required List<dynamic> tags,
    }) = _Category;

    factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}
