import 'package:tech_review/providers/auth_provider.dart';
import 'package:tech_review/token_service.dart';
import 'package:tech_review/utils/dio_request.dart';

class LoginController {
  final tokenService = TokenService();

  void login(String username, String password) async {
    try {
      await DioRequest.dio.post(
        '/auth/login',
        data: {'username': username, 'password': password},
      );
    } catch (e) {
      print('An error occurred: $e');
    }
  }

  void refreshToken(AuthProvider authProvider) async {
    try {
      await DioRequest.dio.post(
        '/auth/refresh',
        data: {'refreshToken': tokenService.getRefreshToken()},
      );
    } catch (e) {
      print('An error occurred: $e');
    } finally {
      // authProvider._ = false;
    }
  }
}
