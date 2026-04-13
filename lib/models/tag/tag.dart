// To parse this JSON data, do
//
//     final tag = tagFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'tag.freezed.dart';
part 'tag.g.dart';

Tag tagFromJson(String str) => Tag.fromJson(json.decode(str));

String tagToJson(Tag data) => json.encode(data.toJson());

@freezed
abstract class Tag with _$Tag {
    const factory Tag({
        @JsonKey(name: "id")
        required int id,
        @JsonKey(name: "category_id")
        required int categoryId,
        @JsonKey(name: "name")
        required String name,
    }) = _Tag;

    factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}
