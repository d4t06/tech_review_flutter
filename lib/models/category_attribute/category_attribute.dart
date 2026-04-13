// To parse this JSON data, do
//
//     final categoryAttribute = categoryAttributeFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'category_attribute.freezed.dart';
part 'category_attribute.g.dart';

CategoryAttribute categoryAttributeFromJson(String str) => CategoryAttribute.fromJson(json.decode(str));

String categoryAttributeToJson(CategoryAttribute data) => json.encode(data.toJson());

@freezed
abstract class CategoryAttribute with _$CategoryAttribute {
    const factory CategoryAttribute({
        @JsonKey(name: "id")
        required int id,
        @JsonKey(name: "category_id")
        required int categoryId,
        @JsonKey(name: "attribute_name_ascii")
        required String attributeNameAscii,
        @JsonKey(name: "attribute_name")
        required String attributeName,
        @JsonKey(name: "represent")
        required bool represent,
    }) = _CategoryAttribute;

    factory CategoryAttribute.fromJson(Map<String, dynamic> json) => _$CategoryAttributeFromJson(json);
}
