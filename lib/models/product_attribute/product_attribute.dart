// To parse this JSON data, do
//
//     final productAttribute = productAttributeFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'product_attribute.freezed.dart';
part 'product_attribute.g.dart';

ProductAttribute productAttributeFromJson(String str) => ProductAttribute.fromJson(json.decode(str));

String productAttributeToJson(ProductAttribute data) => json.encode(data.toJson());

@freezed
abstract class ProductAttribute with _$ProductAttribute {
    const factory ProductAttribute({
        @JsonKey(name: "id")
        required int id,
        @JsonKey(name: "product_id")
        required int productId,
        @JsonKey(name: "category_attribute_id")
        required int categoryAttributeId,
        @JsonKey(name: "value")
        required String value,
    }) = _ProductAttribute;

    factory ProductAttribute.fromJson(Map<String, dynamic> json) => _$ProductAttributeFromJson(json);
}
