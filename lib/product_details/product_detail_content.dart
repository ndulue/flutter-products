import 'package:flutter/material.dart';
import 'package:flutterproduct/models/product.dart';
import 'package:flutterproduct/product_details/IconTitle.dart';
import 'package:flutterproduct/product_details/product_detail_tabbar.dart';
import 'package:flutterproduct/product_listing/red_button.dart';

class ProductContent extends StatelessWidget {

  final Product product;
  final screenHeight;

  const ProductContent({Key key, this.product, this.screenHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children:  <Widget>[
            SizedBox(
              height: screenHeight * 0.2,
            ),
           Image.asset(product.imagePath, height: screenHeight * 0.3,),
           Row(
             mainAxisSize: MainAxisSize.max,
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               Text("Starting*",
                style: TextStyle(
                  color: Color(0xFF909090),
                  fontSize: 10,
                  fontWeight: FontWeight.w900
                ),
               ),
               RichText(
                 text: TextSpan(
                   children: [
                     TextSpan(text: "\$",
                       style: TextStyle(color: Color(0xFF0000FF), fontSize: 10),
                     ),
                     TextSpan(text: "${product.price}",
                       style: TextStyle(color: Color(0xFF0000FF), fontSize: 18, fontWeight: FontWeight.w700),
                     ),
                   ]
                 )
               )
             ],
           ),
           SizedBox(
             height: 10,
           ),
           Row(
             children: <Widget>[
               Text(product.name.replaceAll("\n", " ") + "\t\t\t\t",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 17.0
                ),
               ),
               Hero(
                 tag: product.name,
                 child: Image.asset("assets/logo.png", height: 20,))
             ],
           ),
           SizedBox(
             height: 10,
           ),
           Text(
             product.description + product.productInfo + product.productInfo,
             style: TextStyle(
                 color: Color(0xFF909090),
                 fontWeight: FontWeight.w300,
                 fontSize: 14.0
             ),
           ),
           SizedBox(
             height: 10,
           ),
           Center(
             child: Row(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 IconTitle(imagePath: "assets/icon3.png", title : "Created"),
                 IconTitle(imagePath: "assets/icon1.png", title : "Connect"),
                 IconTitle(imagePath: "assets/icon2.png", title : "Disconnect"),
               ],
             ),
           ),
           Divider(
             color: Color(0xFFECECEC),
             thickness: 1,
             height: 32,
           ),
           Row(
             children: <Widget>[
               RedButton(
                 buttonText: "Pre-order",
               ),
               Spacer(),
               Material(
                 elevation: 4,
                 color: Colors.white,
                 shape: CircleBorder(),
                 child: Icon(
                   Icons.add,
                   size: 35,
                   color: Color(0xFF0000FF),
                 ),
               )
             ],
           )
         ],
      ),
    );
  }
}
