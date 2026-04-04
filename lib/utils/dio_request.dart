import 'package:dio/dio.dart';
import 'package:tech_review/providers/auth_provider.dart';
// import 'package:tech_review/token_service.dart';
import 'package:tech_review/utils/auth_interceptor.dart';

final _options = BaseOptions(
  // baseUrl: 'https://nest-mobile.onrender.com/api',
  baseUrl: 'http://localhost:4000/api',
  connectTimeout: Duration(seconds: 8),
  receiveTimeout: Duration(seconds: 8),
  headers: {'Content-Type': 'application/json'},
);

// final _tokenService = TokenService();

final dio = Dio(_options);

class DioRequest {
  static final dio = Dio(_options);

  final dio = Dio(_options);

  final dio = Dio(_options);

  Dio getDio() {
    return Dio(_options);
  }

  static Dio get dio {
    return Dio(_options);
  }
}
