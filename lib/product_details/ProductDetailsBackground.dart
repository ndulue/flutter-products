import 'package:flutter/material.dart';

class ProductDetailsBackground extends StatelessWidget {

  final screenHeight, screenWidth;

  const ProductDetailsBackground({
    Key key,
    this.screenHeight,
    this.screenWidth
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Positioned(
          left: screenWidth * 0.2,
          top: -screenWidth * 0.3,
          child: Container(
            height: screenWidth * 1.2,
            width: screenWidth * 1.2,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF0000FF)
            ),
          ),
        ),
        Positioned(
            left: 20,
            right: 20,
            top: screenHeight * 0.1,
            child: Image.asset("assets/bg.png",
              color: Colors.white30.withOpacity(0.5),
            ),
        )
      ],
    );
  }
}
