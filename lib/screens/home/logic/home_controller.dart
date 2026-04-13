import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tech_review/models/product_list/product_list.dart';
// import 'package:tech_review/providers/app_loading/app_loading.dart';
import 'package:tech_review/providers/dio/dio_provider.dart';
import 'package:tech_review/screens/home/dto/get_products_response.dart';
import 'package:tech_review/screens/home/logic/home_state.dart';

part 'home_controller.g.dart';

@riverpod
class HomeController extends _$HomeController {
  late final Dio _dio;

  @override
  HomeState build() {
    _dio = ref.read(dioProvider);

    return HomeState();
  }

  Future<List<ProductList>> callGetProducts() async {
    final res = await _dio.get('/products?page=1');

    final GetProductsResponse payload = GetProductsResponse.fromJson(res.data);

    return payload.products;
  }

  // Private method to simulate an API call
  Future<void> fetchProducts() async {
    state = state.copyWith(products: const AsyncValue.loading());

    state = state.copyWith(
      products: await AsyncValue.guard(() async {
        return await callGetProducts();
      }),
    );

    // try {
    //   ref.read(appLoadingProvider.notifier).show();

    //   final products = await callGetProducts();

    //   state = state.copyWith(products: products, isLoading: false);
    // } on DioException catch (e) {
    //   print(e.message);
    // } finally {
    //   ref.read(appLoadingProvider.notifier).hide();
    // }
  }
}
