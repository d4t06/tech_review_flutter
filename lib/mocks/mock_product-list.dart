
import 'package:tech_review/models/product_list/product_list.dart';

class MockProduct {
  static Future<List<ProductList>> fetchAll() async {
    await Future.delayed(const Duration(seconds: 1));

    return [
      // ProductList(232, "Dell 7430 ", "", 6, 3),
      // ProductList(231, "HP ProBook 455 G9", "", 6, 7),
      // ProductList(230, "Dell 5330", "", 6, 3),
      // ProductList(229, "Lenovo P14s Gen 1", "", 6, 4),
      // ProductList(228, "HP EliteBook x360 1030 G8", "", 6, 7),
      // ProductList(227, "Dell Vostro 5501", "", 6, 3),
      // ProductList(226, "Dell Vostro 5401", "", 6, 3),
      // ProductList(225, "Surface Laptop", "", 6, 8),
      // ProductList(224, "HP Pavilion Gaming 15 ", "", 6, 7),
      // ProductList(223, "Surface Laptop GO", "", 6, 8),
      // ProductList(222, "HP Pavilion Gaming 15 2018", "", 6, 7),
      // ProductList(999, "This product not available", "", 6, 4),
    ];
  }
}
