import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tech_review/components/default_app_bar.dart';
import 'package:tech_review/components/default_error.dart';
import 'package:tech_review/mocks/mock_brand.dart';
import 'package:tech_review/models/product.dart';
import 'package:tech_review/styles.dart';

class ProductDetail extends StatefulWidget {
  final int index;

  ProductDetail(this.index);

  @override
  State<StatefulWidget> createState() => _ProductDetailState(this.index);
}

class _ProductDetailState extends State<ProductDetail> {
  final int id;

  bool isLoading = true;
  bool isError = false;

  //data = ModalRoute.of(context).settings.arg
  Product product = Product.blank();

  _ProductDetailState(this.id);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProduct(this.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: _root(),
    );
  }

  Future<void> getProduct(int id) async {
    try {
      if (this.mounted) {
        setState(() => this.isLoading = true);

        final productDetail = await Product.fetchById(id);

        setState(() {
          this.isLoading = false;
          this.product = productDetail;
        });
      }
    } on DioException catch (e) {
      print(e.type);

      setState(() {
        this.isLoading = false;
        this.isError = true;
      });
    }
  }

  Widget _root() {
    if (this.isLoading) {
      return Center(child: CircularProgressIndicator());
    } else {
      return RefreshIndicator(
        onRefresh: () => getProduct(this.id),
        child: this.isError
            ? DefaultError(onpress: () => getProduct(this.id))
            : SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: _body(),
                ),
              ),
      );
    }
  }

  List<Widget> _body() {
    final result = <Widget>[];

    result.add(_renderImage());
    result.add(
      Center(child: Text(product.product_name, style: Styles.headerLarge)),
    );
    result.add(_renderTitle("Spec"));
    result.addAll(_renderSpec());
    result.add(_renderTitle("Detail"));
    // result.add(_renderDetail());

    return result;
  }

  Widget _renderTitle(String title) {
    return Container(
      padding: EdgeInsets.only(left: 15, bottom: 10, top: 15),
      child: Text(title, style: Styles.headerLarge),
    );
  }

  Widget _renderImage() {
    final brand = MockBrand.getBrandById(this.product.brand_id);

    return Container(
      height: 200,
      child: Center(
        child: Image.network(brand.image_url, fit: BoxFit.fitHeight),
      ),
    );
  }

  List<Widget> _renderSpec() {
    return this.product.attributes
        .map(
          (att) => Container(
            padding: EdgeInsets.only(left: 15, bottom: 5),
            child: Text(att.value, style: Styles.subText),
          ),
        )
        .toList();
  }
}
