// import 'package:dio/dio.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tech_review/components/default_app_bar.dart';
import 'package:tech_review/models/product_detail/product_detail.dart';
import 'package:tech_review/providers/dio/dio_provider.dart';
import 'package:tech_review/screens/product_detail/logic/product_detail_controller.dart';
// import 'package:tech_review/components/default_error.dart';
// import 'package:tech_review/mocks/mock_brand.dart';
// import 'package:tech_review/styles.dart';

class ProductDetailScreen extends ConsumerStatefulWidget {
  final String id;
  const ProductDetailScreen({super.key, required this.id});

  @override
  ConsumerState<ProductDetailScreen> createState() =>
      _ProductDetailScreenState();
}

class _ProductDetailScreenState extends ConsumerState<ProductDetailScreen> {
  late String id;
  late Dio dio;

  bool isLoading = true;
  String errorMsg = '';
  ProductDetail? productDetail = null;

  @override
  void initState() {
    super.initState();

    id = widget.id;

    Future.microtask(() async {
      dio = ref.read(dioProvider);
      final product = await ProductDetailController.fetchProduct(
        widget.id,
        dio,
      );

      setState(() {
        productDetail = product;
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: DefaultAppBar(), body: _root());
  }

  Widget _root() {
    if (this.isLoading) {
      return Center(child: CircularProgressIndicator());
    } else {
      return RefreshIndicator(
        onRefresh: () => ProductDetailController.fetchProduct(id, dio),
        child: this.errorMsg.isNotEmpty
            ? Center(child: Text("Error"))
            : productDetail != null
            ? SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: _body(),
                ),
              )
            : Center(child: Text("Error")),
      );
    }
  }

  List<Widget> _body() {
    final result = <Widget>[];

    // result.add(_renderImage());
    result.add(Center(child: Text(productDetail!.productName)));
    result.add(_renderTitle("Spec"));
    result.addAll(_renderSpec());
    result.add(_renderTitle("Detail"));
    // result.add(_renderDetail());

    return result;
  }

  Widget _renderTitle(String title) {
    return Container(
      padding: EdgeInsets.only(left: 15, bottom: 10, top: 15),
      child: Text(title),
    );
  }

  // Widget _renderImage() {
  //   final brand = MockBrand.getBrandById(this.product.brand_id);

  //   return Container(
  //     height: 200,
  //     child: Center(
  //       child: Image.network(brand.image_url, fit: BoxFit.fitHeight),
  //     ),
  //   );
  // }

  List<Widget> _renderSpec() {
    if (productDetail == null) return [];

    return productDetail!.attributes
        .map(
          (att) => Container(
            padding: EdgeInsets.only(left: 15, bottom: 5),
            child: Text(att.value),
          ),
        )
        .toList();
  }
}
