import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  String imagePath;
  String text;
  int widthGiven;
  CategoryCard({this.text, this.imagePath,this.widthGiven});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthGiven.toDouble(),
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
