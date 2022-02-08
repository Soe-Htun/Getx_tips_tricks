import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final  double fontSize;
  final FontWeight fontWeight;
  final double padding;

  const CustomText({ Key? key,
    required this.text,
    required this.color,
    this.fontSize = 15,
    this.fontWeight = FontWeight.normal,
    this.padding = 0
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: padding),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight
        ),
      ),
    );
  }
}