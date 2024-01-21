import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  String? CatergoryName;
  Color? CatergoryColor;
  VoidCallback? onTap;
  Category({this.CatergoryColor, this.CatergoryName, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 24),
        alignment: Alignment.centerLeft,
        color: this.CatergoryColor,
        height: 65,
        width: double.infinity,
        child: Text(
          '$CatergoryName',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
