import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_review/components/app_async_value_view.dart';
import 'package:tech_review/components/default_app_bar.dart';
import 'package:tech_review/components/default_error.dart';
import 'package:tech_review/mocks/mock_brand.dart';
import 'package:tech_review/models/product_list/product_list.dart';
import 'package:tech_review/providers/go_router_provivder.dart';
import 'package:tech_review/screens/home/logic/home_controller.dart';
import 'package:tech_review/screens/home/logic/home_state.dart';
import 'package:tech_review/styles/theme.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();

    // Use Future.microtask or addPostFrameCallback to avoid
    // calling side-effects during the build phase
    Future.microtask(() {
      ref.read(homeControllerProvider.notifier).fetchProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    final homeState = ref.watch(homeControllerProvider);

    return Scaffold(
      appBar: DefaultAppBar(),
      body: AppAsyncValueView(
        value: homeState.products,
        onRetry: ref.read(homeControllerProvider.notifier).fetchProducts,
        data: (data) => RefreshIndicator(
          onRefresh: () async {},
          child: Padding(
            padding: EdgeInsets.all(context.spacing.s3),
            child: _pageContent(homeState, data),
          ),
        ),
      ),
    );
  }

  Widget _pageContent(HomeState homeState, List<ProductList> products) {
    final listToShow = homeState.isSearch ? homeState.searchResults : products;

    if (homeState.isLoading) {
      return Center(child: CircularProgressIndicator());
    }

    if (listToShow.isEmpty) {
      return DefaultError(onpress: () {});
    }

    return _renderListView(context, listToShow);
  }

  Widget _renderListView(BuildContext ct, List<ProductList> listToShow) {
    return ListView.builder(
      itemCount: listToShow.length,
      itemBuilder: (ct, index) {
        final product = listToShow[index];
        return Container(
          decoration: BoxDecoration(
            boxShadow: context.shadow.lg,
            color: Colors.white,
            borderRadius: BorderRadius.all(context.radius.x2l),
          ),
          margin: EdgeInsets.only(bottom: context.spacing.s4),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(
              horizontal: context.spacing.s3,
              vertical: context.spacing.s2,
            ),
            leading: _itemImage(product),
            title: _itemTitle(product),
            onTap: () => _onTapNavigate(ct, product.id),
          ),
        );
      },
    );
  }

  void _onTapNavigate(BuildContext ct, int id) {
    ct.pushNamed(
      AppRoute.productDetail.name,
      pathParameters: {'id': id.toString()},
    );
  }

  Widget _itemImage(ProductList product) {
    final brand = MockBrand.getBrandById(product.brandId);

    return Container(
      constraints: BoxConstraints.tightFor(width: 60, height: 60),
      child: Image.network(brand.image_url, fit: BoxFit.cover),
    );
  }

  Widget _itemTitle(ProductList product) {
    return Text(product.productName);
  }
}
