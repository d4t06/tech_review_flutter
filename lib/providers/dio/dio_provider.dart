import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tech_review/providers/dio/auth_interceptor.dart';

part 'dio_provider.g.dart';

final dioOptions = BaseOptions(
  // baseUrl: 'https://nest-mobile.onrender.com/api',
  baseUrl: 'http://localhost:4000/api',
  connectTimeout: Duration(seconds: 8),
  receiveTimeout: Duration(seconds: 8),
  headers: {'Content-Type': 'application/json'},
);

@riverpod
Dio dio(Ref ref) {
  final dio = Dio(dioOptions);
  return dio;
}

@riverpod
Dio dioWithAuth(Ref ref) {
  final dio = Dio(dioOptions);

  final authInterceptor = ref.read(authInterceptorProvider);

  dio.interceptors.add(authInterceptor);

  return dio;
}
