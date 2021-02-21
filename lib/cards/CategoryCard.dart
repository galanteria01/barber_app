import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  String imagePath;
  String text;
  CategoryCard({this.text, this.imagePath});
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
              Image(image: AssetImage(imagePath),),
              SizedBox(height: 16,),
              Text(text)
            ],
          ),
        )
      )
    );
  }
}
