// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_interceptor.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(authInterceptor)
final authInterceptorProvider = AuthInterceptorProvider._();

final class AuthInterceptorProvider
    extends $FunctionalProvider<Interceptor, Interceptor, Interceptor>
    with $Provider<Interceptor> {
  AuthInterceptorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authInterceptorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authInterceptorHash();

  @$internal
  @override
  $ProviderElement<Interceptor> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Interceptor create(Ref ref) {
    return authInterceptor(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Interceptor value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Interceptor>(value),
    );
  }
}

String _$authInterceptorHash() => r'f96eef5e963f324159cb3fb5b6892373cb209e9d';
