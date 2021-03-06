import 'package:flutter/material.dart';
import 'package:flutterproduct/models/product.dart';

class BlueButton extends StatelessWidget {

  final Product product;

  const BlueButton({ Key key, this.product}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: (){},
      child: Text(
        product.buttonText,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 18
        ),
      ),
      color: Colors.green[400],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        )
      ),
    );
  }
}
