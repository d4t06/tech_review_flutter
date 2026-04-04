import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tech_review/models/product_list.dart';

class ProductProvider extends ChangeNotifier {
  List<ProductList> _products = [];
  List<ProductList> _searchResults = [];

  bool _isLoading = true;
  bool _isInited = false;
  bool _isSearched = false;

  bool get isLoading => _isLoading;
  bool get isInited => _isInited;
  bool get isSearched => _isSearched;
  List<ProductList> get products => _products;
  List<ProductList> get searchResults => _searchResults;

  CancelToken? _cancelToken;

  Future<void> getProducts() async {
    try {
      this._isLoading = true;
      this._isInited = true;
      notifyListeners();

      final res = await ProductList.fetchAll(1);
      this._products = res;
    } on DioException catch (e) {
      debugPrint(e.message);
    } finally {
      this._isLoading = false;
      notifyListeners();
    }
  }

  Future<void> searchProducts(String query) async {
    var result = <ProductList>[];

    try {
      if (query.isEmpty) {
        this._isSearched = false;
        this._isLoading = false;

        notifyListeners();

        return;
      }

      // debugPrint(">>> Start searching with query: $query");

      this._isLoading = true;
      this._isSearched = true;

      notifyListeners();

      _cancelToken?.cancel();
      _cancelToken = CancelToken();

      result = await ProductList.search(query, _cancelToken);

      this._searchResults = result;
      this._isLoading = false;
      notifyListeners();
    } on DioException catch (e) {
      if (CancelToken.isCancel(e)) {
        debugPrint(">>> Search request cancelled for query: $query");
      } else {
        // Actual Network Error
        this._isLoading = false;
        notifyListeners();
      }
    } catch (e) {
      debugPrint('error: ${e.toString()}, $query');
      this._isLoading = false;
      notifyListeners();
    }
  }
}
