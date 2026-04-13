
import 'package:freezed_annotation/freezed_annotation.dart';

part 'like_product.freezed.dart';
part 'like_product.g.dart';

@freezed
abstract class LikeProduct with _$LikeProduct {
    const factory LikeProduct({
        @JsonKey(name: "product_id")
        required int productId,
        @JsonKey(name: "user_id")
        required int userId,
    }) = _LikeProduct;

    factory LikeProduct.fromJson(Map<String, dynamic> json) => _$LikeProductFromJson(json);
}
