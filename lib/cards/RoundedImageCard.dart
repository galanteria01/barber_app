import 'package:flutter/material.dart';

class RoundedImageCard extends StatelessWidget {
  double height;
  double width;
  double radius;
  RoundedImageCard({this.height, this.width, this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Image(image: AssetImage("assets/sample.jpg"),),
      ),
    );
  }
}
