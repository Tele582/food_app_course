import 'package:flutter/material.dart';
import 'package:food_app_course/scr/helpers/style.dart';



class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color colours;
  final FontWeight weight;


  CustomText ({@required this.text, this.size, this.colours, this.weight});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(text, style: TextStyle(fontSize: size ?? 16, color: colours?? black, fontWeight: weight ?? FontWeight.normal), );
  }
}


