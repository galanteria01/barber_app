import 'package:flutter/material.dart';

class CustomStarRating extends StatelessWidget {
  int iconSize;
  int starRating;


  CustomStarRating({this.iconSize,this.starRating});

  List<Widget> getStars(){
    List<Widget> stars = [];
    Widget redStar = Icon(Icons.star,color: Colors.redAccent,size: iconSize.toDouble(),);
    Widget whiteStar = Icon(Icons.star,color: Colors.grey[200],size: iconSize.toDouble());
    while(starRating > 0){
      stars.add(redStar);
      starRating = starRating - 1;
    }
    while(stars.length < 5){
      stars.add(whiteStar);
    }
    return stars;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: getStars()
      ),
    );
  }
}
