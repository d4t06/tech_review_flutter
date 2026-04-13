import 'package:dio/dio.dart';
import 'package:tech_review/models/product_detail/product_detail.dart';

class ProductDetailController {
  static Future<ProductDetail> fetchProduct(String id, Dio dio) async {
    final res = await dio.get("/products/$id");

    final payload = ProductDetail.fromJson(res.data);

    return payload;
  }
}
