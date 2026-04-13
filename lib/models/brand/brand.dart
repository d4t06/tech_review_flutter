// To parse this JSON data, do
//
//     final brand = brandFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'brand.freezed.dart';
part 'brand.g.dart';

Brand brandFromJson(String str) => Brand.fromJson(json.decode(str));

String brandToJson(Brand data) => json.encode(data.toJson());

@freezed
abstract class Brand with _$Brand {
    const factory Brand({
        @JsonKey(name: "id")
        required int id,
        @JsonKey(name: "brand_name")
        required String brandName,
        @JsonKey(name: "brand_name_ascii")
        required String brandNameAscii,
        @JsonKey(name: "image_url")
        required String imageUrl,
        @JsonKey(name: "category_id")
        required int categoryId,
    }) = _Brand;

    factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}
