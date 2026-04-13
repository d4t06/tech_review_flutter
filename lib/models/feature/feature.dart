// To parse this JSON data, do
//
//     final feature = featureFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'feature.freezed.dart';
part 'feature.g.dart';

Feature featureFromJson(String str) => Feature.fromJson(json.decode(str));

String featureToJson(Feature data) => json.encode(data.toJson());

@freezed
abstract class Feature with _$Feature {
    const factory Feature({
        @JsonKey(name: "id")
        required int id,
        @JsonKey(name: "product_id")
        required int productId,
        @JsonKey(name: "value")
        required String value,
    }) = _Feature;

    factory Feature.fromJson(Map<String, dynamic> json) => _$FeatureFromJson(json);
}
