import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tech_review/providers/dio/dio_provider.dart';
import 'package:tech_review/services/token_service.dart';

part 'auth_interceptor.g.dart';

@riverpod
Interceptor authInterceptor(Ref ref) {
  ref.keepAlive();
  return interceptorsWrapper(ref);
}

InterceptorsWrapper interceptorsWrapper(ref) {
  return InterceptorsWrapper(
    onRequest:
        (RequestOptions options, RequestInterceptorHandler handler) async {
          final tokenService = ref.read(tokenServiceProvider);
          final token = await tokenService.getAccessToken();
          print(">>> Adding Authorization header: Bearer $token");
          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          return handler.next(options);
        },

    onError: (DioException err, ErrorInterceptorHandler handler) async {
      print(">>> Error occurred: ${err.message}");
      // 1. Check if the error is a 401 (Unauthorized)
      if (err.response?.statusCode == 401) {
        print(">>> Access token expired, attempting to refresh...");

        final dio = ref.read(DioProvider);
        final tokenService = ref.read(tokenServiceProvider);

        final refreshToken = await tokenService.getRefreshToken();

        if (refreshToken != null) {
          try {
            // 2. Attempt to get a new token from your backend
            final response = await dio.post(
              '/auth/refresh',
              data: {'refresh_token': refreshToken},
            );

            print(">>> Refresh token successful");

            final newAccessToken = response.data['token'];
            // final newRefreshToken = response.data['refresh_token'];

            // 3. Save new tokens
            await tokenService.saveAccessToken(newAccessToken);
            // await tokenService.saveRefreshToken(newRefreshToken);

            // 4. Update the failed request header and retry it
            print(
              ">>> Token refreshed successfully, retrying original request...",
            );
            err.requestOptions.headers['Authorization'] =
                'Bearer $newAccessToken';

            final retryResponse = await dio.fetch(err.requestOptions);
            return handler.resolve(retryResponse);
          } catch (e) {
            // 5. If refresh fails (refresh token expired), log out the user
            print(">>> Refresh token expired or invalid, logging out...");

            await tokenService.clear();
          }
        }
      }
      return handler.next(err);
    },
  );
}
