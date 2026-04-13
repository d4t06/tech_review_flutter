import 'package:riverpod_annotation/riverpod_annotation.dart';

part "app_loading.g.dart";

@riverpod
class AppLoading extends _$AppLoading {
  @override
  bool build() => true;

  void show() => state = true;
  void hide() => state = false;
}