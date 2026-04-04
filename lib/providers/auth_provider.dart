import 'package:flutter/material.dart';
import 'package:tech_review/models/user.dart';
// import 'package:tech_review/screens/login/login_controller.dart';
import 'package:tech_review/token_service.dart';
import 'package:tech_review/utils/dio_request.dart';

class LoginResponse {
  final String token;
  final String refresh_token;
  // final User user;

  LoginResponse({
    required this.token,
    required this.refresh_token,
    // required this.user,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      token: json['token'],
      refresh_token: json['refresh_token'],
      // user: User.fromJson(json['user']),
    );
  }
}

class RefreshTokenResponse {
  final String token;
  // final User user;

  RefreshTokenResponse({required this.token});

  factory RefreshTokenResponse.fromJson(Map<String, dynamic> json) {
    return RefreshTokenResponse(
      token: json['token'],
      // user: User.fromJson(json['user']),
    );
  }
}

class AuthProvider extends ChangeNotifier {
  final tokenService = TokenService();
  User? _user = null;

  String _token = "";
  String _refreshToken = "";

  bool _isLoading = true;

  User? get user => _user;
  String get token => _token;
  String get refreshToken => _refreshToken;
  bool get isLoading => _isLoading;

  void doLogin(String username, String password, VoidCallback onSuccess) async {
    try {
      final res = await DioRequest.dio.post(
        '/auth/login',
        data: {'username': username, 'password': password},
      );

      final payload = LoginResponse.fromJson(res.data);

      await this.tokenService.saveAccessToken(payload.token);
      await this.tokenService.saveRefreshToken(payload.refresh_token);

      this._user = User(id: 1, username: "test", role: 'user');
      onSuccess();
    } catch (e) {
      print('An error occurred: $e');
    }
  }

  void doRefreshToken() async {
    try {
      final refreshToken = await tokenService.getRefreshToken();
      print('>>> Refreshing token: $refreshToken');

      await Future.delayed(const Duration(seconds: 1));

      final res = await DioRequest.dio.post(
        '/auth/refresh',
        data: {'refresh_token': refreshToken},
      );

      final payload = RefreshTokenResponse.fromJson(res.data);

      await this.tokenService.saveAccessToken(payload.token);
      this._user = User(id: 1, username: "test", role: 'user');
    } catch (e) {
      print('An error occurred: $e');
    } finally {
      this._isLoading = false;
      notifyListeners();
    }
  }

  void doLogout() async {
    await tokenService.clearTokens();
    this._user = null;
    
    notifyListeners();
  }
}
