import 'package:flutter/material.dart';

class Topbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
       decoration: BoxDecoration(
         color: Color(0xFFE0E0E0),
         borderRadius: BorderRadius.all(Radius.circular(30)),
       ),
      child: TextField(
        cursorColor: Colors.grey,
        style: TextStyle(
          fontSize: 16,
          color: Colors.black
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
            size: 16,
          ),
          hintText: "Search Microsoft products",
          hintStyle: TextStyle(fontSize: 15, color: Colors.black)
        ),

      ),
    );
  }
}
