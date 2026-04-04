import 'package:flutter/material.dart';
import 'package:tech_review/screens/home/home.dart';
import 'package:tech_review/screens/login/login.dart';
import 'package:tech_review/screens/not_found.dart';
import 'package:tech_review/screens/product_detail.dart';
import 'package:tech_review/screens/user.dart';

const LOGIN_ROUTE = '/login';
const PRODUCT_DETAIL_ROUTE = '/product_detail';

class RouterGenerator {
  static RouteFactory routes() {
    return (settings) {
      final agrs = settings.arguments as Map<String, dynamic>? ?? {};

      Widget screen;

      switch (settings.name) {
   
        case PRODUCT_DETAIL_ROUTE:
          screen = ProductDetail(agrs['id']);
          break;

        case LOGIN_ROUTE:
          screen = Login();
          break;
        default:
          screen = NotFound();
      }

      return MaterialPageRoute(builder: (context) => screen);
    };
  }
}
