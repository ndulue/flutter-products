import 'package:flutter/material.dart';
import 'package:flutterproduct/models/product.dart';

class VerticalProductItem extends StatelessWidget {

  final Product product;
  final screenHeight;

  VerticalProductItem({
    Key key,
    this.product,
    this.screenHeight
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      color: product.backgroundColor,
      child: Column(
        children: <Widget>[
          Image.asset(
            product.imagePath,
            height: screenHeight * 0.15,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            product.name,
            style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Color(0xFF3B3B43),
                fontSize: 14
            ),
          ),
          Text(
            product.description,
            style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Color(0xFF3B3B43),
                fontSize: 8
            ),
          )
        ],
      ),
    );
  }
}
