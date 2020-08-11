import 'package:flutter/material.dart';
import 'package:flutterproduct/models/product.dart';
import 'package:flutterproduct/product_listing/blue_button.dart';

class RightImageProduct extends StatelessWidget {

  final screenHeight;
  final Product product;

  const RightImageProduct({this.screenHeight, this.product});
  //super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 32),
      height: screenHeight * 0.3,
      color: product.backgroundColor,
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    product.name,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w800
                    ),
                  ),
                  SizedBox(height: 10),
                  BlueButton(product: product)
                ],
              )
          ),
          Expanded(
              flex: 5,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: -50,
                    bottom: -50,
                    child: Transform.rotate(
                        angle: -0.1,
                        child: Image.asset(
                            product.imagePath,
                          height: 80,
                          width: 180,
                        )
                    ),
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}
