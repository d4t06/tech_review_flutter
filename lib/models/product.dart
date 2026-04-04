import 'package:tech_review/utils/dio_request.dart';

class Attribute {
  final String value;

  Attribute({required this.value});

  factory Attribute.fromJson(Map<String, dynamic> json) {
    return Attribute(value: json['value']);
  }
}

class Product {
  final int id;
  final int brand_id;
  final String product_name;
  final List<Attribute> attributes;

  Product({
    required this.id,
    required this.brand_id,
    required this.product_name,
    required this.attributes,
  });

  Product.blank() : id = 0, brand_id = 0, product_name = '', attributes = [];

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      brand_id: json['brand_id'],
      product_name: json['product_name'],
      attributes: (json['attributes'] as List)
          .map((json) => Attribute.fromJson(json))
          .toList(),
    );
  }

  static Future<Product> fetchById(int id) async {
    print(">>> Get product $id");
    final res = await DioRequest.dioWithInterceptor.get("/products/$id");

    return Product.fromJson(res.data);
  }
}
