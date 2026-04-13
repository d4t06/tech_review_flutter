import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:tech_review/services/secure_storage_service.dart';

final secureStorageProvider = Provider<FlutterSecureStorage>((ref) {
  const storage = FlutterSecureStorage();

  return storage;
});

final secureStorageServiceProvider = Provider<SecureStorageService>((ref) {
  final storage = ref.read(secureStorageProvider);
  return SecureStorageService(storage);
});