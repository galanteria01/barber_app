import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
          ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Image(image: AssetImage("assets/Location-Svg.png"),),
              SizedBox(height: 16,),
              Text("Near Me")
            ],
          ),
        )
      )
    );
  }
}
