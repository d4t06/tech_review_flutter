import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tech_review/constants/storage_keys.dart';
import 'package:tech_review/providers/secure_storage_provider.dart';
import 'package:tech_review/services/secure_storage_service.dart';

final tokenServiceProvider = Provider<TokenService>(
  (ref) => TokenService(ref.read(secureStorageServiceProvider)),
);

class TokenService {
  final SecureStorageService _storageService;

  TokenService(this._storageService);

  Future<void> saveAccessToken(String access) async {
    await _storageService.write(key: StorageKeys.token, value: access);
  }

  Future<void> saveRefreshToken(String refresh) async {
    await _storageService.write(key: StorageKeys.refreshToken, value: refresh);
  }

  Future<String?> getAccessToken() => _storageService.read(StorageKeys.token);
  Future<String?> getRefreshToken() =>
      _storageService.read(StorageKeys.refreshToken);

  Future<void> clear() => _storageService.clear();
}
