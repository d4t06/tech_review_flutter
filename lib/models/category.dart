import 'package:tech_review/utils/dio_request.dart';

class Brand {
  final int id;
  final int category_id;
  final String brand_name;
  final String image_url;

  Brand({
    required this.id,
    required this.category_id,
    required this.brand_name,
    required this.image_url,
  });

  factory Brand.fromJson(Map<String, dynamic> json) {
    return Brand(
      id: json['id'],
      category_id: json['category_id'],
      brand_name: json['brand_name'],
      image_url: json['image_url'],
    );
  }
}

class Category {
  final int id;
  final int category_name;
  final List<Brand> brands;

  Category({
    required this.id,
    required this.category_name,
    required this.brands,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      category_name: json['category_name'],
      brands: (json['brands'] as List)
          .map((json) => Brand.fromJson(json))
          .toList(),
    );
  }

  static Future<List<Category>> getCategories(String name) async {
    final res = await DioRequest.dio.get("categories");

    return (res.data as List).map((json) => Category.fromJson(json)).toList();
  }
}
