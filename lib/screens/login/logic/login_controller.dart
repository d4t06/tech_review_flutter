import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tech_review/providers/auth/auth_provider.dart';
import 'package:tech_review/providers/dio/dio_provider.dart';
import 'package:tech_review/screens/login/dto/login_response.dart';
import 'package:tech_review/screens/login/logic/login_state.dart';
import 'package:tech_review/services/token_service.dart';

class LoginNotifier extends Notifier<LoginState> {
  late Dio dio;

  @override
  LoginState build() {
    dio = Dio(dioOptions);

    return LoginState();
  }

  Future<bool> login(String username, String password) async {
    final authNotifier = ref.read(authProvider.notifier);
    final tokenService = ref.read(tokenServiceProvider);

    try {
      state = state.copyWith(isFetching: true, errorMessage: "");

      final res = await dio.post(
        "/auth/login",
        data: {"username": username, "password": password},
      );

      final payload = LoginResponse.fromJson(res.data);

      await tokenService.saveAccessToken(payload.token);

      await tokenService.saveRefreshToken(payload.refreshToken);

      authNotifier.setAuth(user: payload.user, isLoading: false);

      return true;
    } catch (e) {
      state = state.copyWith(errorMessage: "Network error", isFetching: false);
    }

    return false;
  }
}

final loginProvider = NotifierProvider<LoginNotifier, LoginState>(() {
  return LoginNotifier();
});
