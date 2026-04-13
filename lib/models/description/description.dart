// To parse this JSON data, do
//
//     final description = descriptionFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'description.freezed.dart';
part 'description.g.dart';

Description descriptionFromJson(String str) => Description.fromJson(json.decode(str));

String descriptionToJson(Description data) => json.encode(data.toJson());

@freezed
abstract class Description with _$Description {
    const factory Description({
        @JsonKey(name: "product_id")
        required int productId,
        @JsonKey(name: "content")
        required String content,
    }) = _Description;

    factory Description.fromJson(Map<String, dynamic> json) => _$DescriptionFromJson(json);
}
