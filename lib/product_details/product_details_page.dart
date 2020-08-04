import 'package:flutter/material.dart';
import 'package:flutterproduct/models/product.dart';
import 'package:flutterproduct/product_details/ProductDetailsBackground.dart';
import 'package:flutterproduct/product_details/product_detail_content.dart';
import 'package:flutterproduct/product_details/product_detail_tabbar.dart';

class ProductDetailsPage extends StatelessWidget {

  final Product product;

  ProductDetailsPage({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          ProductDetailsBackground(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ProductDetailTabBar(),
                ProductContent(product: product, screenHeight: screenHeight),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
