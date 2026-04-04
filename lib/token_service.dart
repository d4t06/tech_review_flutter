import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenService {
  static final _storage = const FlutterSecureStorage();

  Future<void> saveAccessToken(String access) async {
    await _storage.write(key: 'token', value: access);
  }

  Future<void> saveRefreshToken(String refresh) async {
    await _storage.write(key: 'refresh_token', value: refresh);
  }

  Future<String?> getAccessToken() => _storage.read(key: 'token');
  Future<String?> getRefreshToken() => _storage.read(key: 'refresh_token');

  Future<void> clearTokens() => _storage.deleteAll();
}
