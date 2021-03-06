import 'package:flutter/material.dart';
import 'package:flutterproduct/FadePageRoute.dart';
import 'package:flutterproduct/models/product.dart';
import 'package:flutterproduct/product_details/product_details_page.dart';
import 'package:flutterproduct/product_listing/blue_button.dart';

class LeftImageProduct extends StatelessWidget {

  final screenHeight;
  final Product product;

  const LeftImageProduct({this.screenHeight, this.product});
  //super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

        Navigator.push(
            context, FadePageRoute(
              widget: ProductDetailsPage(
                product: product,
              )
          )
        );
        /*
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => ProductDetailsPage(product: product),
        ));
=6===k
         */
      },
      child: Container(
        padding: const EdgeInsets.only(left: 32),
        height: screenHeight * 0.25,
        color: product.backgroundColor,
        child: Row(
          children: <Widget>[
            Expanded(
                flex: 5,
                child:  Hero(
                    tag: product.name,
                    child: Image.asset(product.imagePath)),
            ),
            Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
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
                      Text(
                        product.description,
                        style: TextStyle(
                            fontSize: 8,
                            color: Colors.black54
                        ),
                      ),
                      SizedBox(height: 1),
                      BlueButton(product: product)
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}