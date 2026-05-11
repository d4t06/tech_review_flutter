import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tech_review/components/default_app_bar.dart';
import 'package:tech_review/models/product_detail/product_detail.dart';
import 'package:tech_review/providers/dio/dio_provider.dart';
import 'package:tech_review/screens/product_detail/logic/product_detail_controller.dart';
import 'package:tech_review/styles/theme.dart';

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
  ProductDetail? productDetail;

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
    if (isLoading) {
      return Center(child: CircularProgressIndicator());
    } else {
      return RefreshIndicator(
        onRefresh: () => ProductDetailController.fetchProduct(id, dio),
        child: errorMsg.isNotEmpty
            ? Center(child: Text("Error"))
            : productDetail != null
            ? Padding(
                padding: EdgeInsets.all(context.spacing.s3),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _body(),
                  ),
                ),
              )
            : Center(child: Text("Error")),
      );
    }
  }

  List<Widget> _body() {
    return [
      SizedBox(height: context.spacing.s8),
      _renderImage(),
      SizedBox(height: context.spacing.s3),
      Center(
        child: Text(
          productDetail!.productName,
          style: context.text.textXl.bold,
        ),
      ),

      SizedBox(height: context.spacing.s8),
      Image.asset('assets/images/icons/gear.png', width: 28),
      SizedBox(height: context.spacing.s3),
      _renderSpec(),
      SizedBox(height: context.spacing.s8),
      Image.asset('assets/images/icons/note.png', width: 28),
      SizedBox(height: context.spacing.s3),
      _renderDetail(),
    ];
  }

  Widget _renderImage() {
    return Center(
      child: ClipRRect(
        borderRadius: context.radius.all(context.radius.md),
        child: Container(
          color: Colors.black.withAlpha(10),
          height: 200,
          width: 200,
          child: Image.asset(
            'assets/images/icons/laptop.png',
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }

  Widget _renderSpec() {
    return Container(
      padding: EdgeInsets.all(context.spacing.s3),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black.withAlpha(10),
        borderRadius: context.radius.all(context.radius.md),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: productDetail!.attributes
            .map((att) => Text(att.value))
            .toList(),
      ),
    );
  }

  Widget _renderDetail() {
    return Html(data: productDetail?.description.content ?? "");
  }
}
