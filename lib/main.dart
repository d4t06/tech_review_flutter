import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_review/app.dart';
import 'package:tech_review/providers/auth_provider.dart';
import 'package:tech_review/providers/product_provider.dart';
import 'package:tech_review/utils/auth_interceptor.dart';
import 'package:tech_review/utils/dio_request.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => ProductProvider()),
        ProxyProvider<AuthProvider, Dio>(
          update: (context, authProvider, previousDio) {
            // Reuse previous instance or create new one
            final dio = previousDio ?? DioRequest.dio;

            // Re-inject the interceptor to ensure it has the latest 'auth' object
            // Clear to avoid adding multiple AuthInterceptors on rebuild
            dio.interceptors.removeWhere((i) => i is AuthInterceptor);
            dio.interceptors.add(AuthInterceptor(dio, authProvider));

            return dio;
          },
        ),
      
      ],
      child: const App(),
    ),
  );
}
