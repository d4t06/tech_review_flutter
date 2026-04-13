import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tech_review/models/user/user.dart';
import 'package:tech_review/providers/auth/refresh_token_response.dart';
import 'package:tech_review/providers/dio/dio_provider.dart';
import 'package:tech_review/providers/nav_provider.dart';
import 'package:tech_review/services/token_service.dart';

class AuthState {
  final User? user;

  final bool isLoading;

  const AuthState(this.user, this.isLoading);

  AuthState copyWith({User? user, required bool isLoading}) {
    return AuthState(user, isLoading);
  }
}

class AuthNotifier extends Notifier<AuthState> {
  late TokenService tokenService;

  @override
  AuthState build() {
    tokenService = ref.read(tokenServiceProvider);

    return AuthState(null, true);
  }

  void setAuth({required User? user, required bool isLoading}) {
    state = state.copyWith(user: user, isLoading: isLoading);
  }

  Future<void> init() async {
    try {
      print(">>>AuthNotifier run init");

      final refershToken = await tokenService.getRefreshToken();
      final freshDio = Dio(dioOptions);

      if ((refershToken == null)) {
        print(">>>AuthNotifier no refresh token ");
        await Future.delayed(Duration(milliseconds: 500));

        return setAuth(isLoading: false, user: null);
      }

      print(">>>AuthNotifier run refresh token $refershToken");

      final res = await freshDio.post(
        "/auth/refresh",
        data: {"refresh_token": refershToken},
      ); // Your existing logic

      final payload = RefreshTokenResponse.fromJson(res.data);

      return setAuth(
        isLoading: false,
        user: User(
          username: payload.user.username,
          role: payload.user.role,
          id: 99,
        ),
      );
    } on DioException catch (e) {
      print("refresh fail, clear token");
      await tokenService.clear();

      return setAuth(isLoading: false, user: null);
    }
  }

  Future<void> logOut() async {
    print(">>>AuthNotifier logout");

    await tokenService.clear();

    ref.read(navProvider.notifier).setIndex(0);

    return setAuth(isLoading: false, user: null);
  }
}

final authProvider = NotifierProvider<AuthNotifier, AuthState>(
  () => AuthNotifier(),
);
