


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_review/models/product_list/product_list.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    // @Default([]) List<ProductList> products,
    @Default(AsyncValue.loading()) AsyncValue<List<ProductList>> products,
    @Default([]) List<ProductList> searchResults,

    @Default(false) bool isSearch,
    @Default(false) bool isLoading,
  }) = _HomeState;
}