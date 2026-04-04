import 'package:dio/dio.dart';
import 'package:tech_review/utils/dio_request.dart';

class _ProductListRes {
  List<ProductList> products;

  _ProductListRes({required this.products});

  factory _ProductListRes.fromJson(Map<String, dynamic> json) {
    return _ProductListRes(
      products: (json['products'] as List)
          .map((json) => ProductList.fromJson(json))
          .toList(),
    );
  }
}

class ProductList {
  final int id;
  final String product_name;
  final String image_url;
  final int category_id;
  final int brand_id;

  ProductList({
    required this.id,
    required this.product_name,
    required this.image_url,
    required this.category_id,
    required this.brand_id,
  });

  factory ProductList.fromJson(Map<String, dynamic> json) {
    return ProductList(
      id: json['id'],
      brand_id: json['brand_id'],
      product_name: json['product_name'],
      image_url: json['image_url'],
      category_id: json['category_id'],
    );
  }

  static Future<List<ProductList>> fetchAll(int page) async {
    print(">>> Fetching all products");

    final res = await DioRequest.dio.get(
      "/products",
      queryParameters: {'page': page},
    );

    print(">>> Response data: ${res.data}");

    return _ProductListRes.fromJson(res.data).products;
  }

  static Future<List<ProductList>> search(
    String name,
    CancelToken? cancelToken,
  ) async {
    print(">>> Search product with name $name");

    await Future.delayed(Duration(seconds: 1));

    final res = await DioRequest.dio.get(
      "/products/search",
      queryParameters: {'q': name},
      cancelToken: cancelToken,
    );

    return (res.data as List)
        .map((json) => ProductList.fromJson(json))
        .toList();
  }
}
