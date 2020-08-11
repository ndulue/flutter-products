import 'package:flutter/material.dart';
import 'package:flutterproduct/models/product.dart';
import 'package:flutterproduct/product_listing/Topbar.dart';
import 'package:flutterproduct/product_listing/left_image_product.dart';
import 'package:flutterproduct/product_listing/red_button.dart';
import 'package:flutterproduct/product_listing/right_image_product.dart';
import 'package:flutterproduct/product_listing/two_product_item_widget.dart';

class ProductListingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(16),
          child: Image.asset("assets/logo.png"),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(
              Icons.apps,
              size: 20,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Topbar(),
            RightImageProduct(
                screenHeight: screenHeight,
                product: pixel
            ),
            LeftImageProduct(
                screenHeight: screenHeight,
                product: stadia
            ),
            TwoProductItemWidget(
              screenHeight: screenHeight,
              product1: pixelStand,
              product2: dayDreamView,
            ),
            RedButton( buttonText:
              "View all"
            ),
          ],
        ),
      ),
    );
  }
}
