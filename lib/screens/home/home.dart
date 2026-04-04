import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_review/components/default_error.dart';
import 'package:tech_review/mocks/mock_brand.dart';
import 'package:tech_review/models/product_list.dart';
import 'package:tech_review/providers/product_provider.dart';
import 'package:tech_review/route.dart';
import 'package:tech_review/screens/home/top-search.dart';
import 'package:tech_review/styles.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // final _controller = ProductController();

  @override
  void initState() {
    super.initState();

    final store = Provider.of<ProductProvider>(context, listen: false);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!store.isInited) {
        store.getProducts();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _root(context));
  }

  Widget _root(BuildContext context) {
    return RefreshIndicator(
      onRefresh: context.read<ProductProvider>().getProducts,
      child: Column(
        children: [
          TopSearch(onSearch: context.read<ProductProvider>().searchProducts),
          Consumer<ProductProvider>(
            builder: (context, store, child) {
              final listToShow = store.isSearched
                  ? store.searchResults
                  : store.products;

              return store.isLoading
                  ? Expanded(child: Center(child: CircularProgressIndicator()))
                  : Expanded(
                      child: listToShow.isNotEmpty
                          ? _renderListView(context, listToShow)
                          : DefaultError(onpress: store.getProducts),
                    );
            },
          ),
        ],
      ),
    );
  }

  Widget _renderListView(BuildContext ct, List<ProductList> listToShow) {
    return ListView.builder(
      itemCount: listToShow.length,
      itemBuilder: (ct, index) {
        final product = listToShow[index];
        return ListTile(
          contentPadding: EdgeInsets.all(10),
          leading: _itemImage(product),
          title: _itemTitle(product),
          onTap: () => _onTapNavigate(ct, product.id),
        );
      },
    );
  }

  void _onTapNavigate(BuildContext ct, int id) {
    Navigator.pushNamed(ct, PRODUCT_DETAIL_ROUTE, arguments: {'id': id});
  }

  Widget _itemImage(ProductList product) {
    final brand = MockBrand.getBrandById(product.brand_id);

    return Container(
      constraints: BoxConstraints.tightFor(width: 70),
      child: Image.network(brand.image_url, fit: BoxFit.fitWidth),
    );
  }

  Widget _itemTitle(ProductList product) {
    return Text(product.product_name, style: Styles.textDefault);
  }
}
