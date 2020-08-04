import 'package:flutter/material.dart';
import 'package:flutterproduct/models/product.dart';
import 'package:flutterproduct/product_listing/vertical_product_item.dart';

class TwoProductItemWidget extends StatelessWidget {

  final screenHeight;

  final Product product1, product2;

  const TwoProductItemWidget({
    Key key,
    this.screenHeight,
    this.product1,
    this.product2

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.25,
      child: Row(
        children: <Widget>[
          Expanded(
            child: VerticalProductItem(
              screenHeight: screenHeight,
              product: product1
            )
          ),
          Expanded(
            child: VerticalProductItem(
              screenHeight: screenHeight,
              product: product2
            )
          )
        ],
      ),
    );
  }
}
