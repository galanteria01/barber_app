import 'package:barber_app/custom_components/custom_star_rating.dart';
import 'package:barber_app/cards/rounded_image.dart';
import 'package:flutter/material.dart';

class CustomerReview extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          toolbarHeight: 84,
          backgroundColor: Colors.white,
          centerTitle: true,
          actions: [
            Image(image: AssetImage("assets/Filter.png"),)
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(28, 8, 28, 0),
          child: Column(
            children: [
              Align(
                  child: Text("Customer Reviews",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600)),
                alignment: Alignment.centerLeft,
              ),
              Row(
                children: [
                  CustomStarRating(starRating: 4,iconSize: 24,),
                  Text(
                    "4 out of 5",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey[600]
                    ),)
                ],
              ),
              Text(
                "70 global ratings",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey[600]),
              ),
              Divider(color: Colors.grey,),
              Align(
                  child: Text("By features"),
                alignment: Alignment.centerLeft,
              ),
              Row(
                children: [
                  Text("Flavor"),
                  CustomStarRating(starRating: 4,iconSize: 18,)
                ],
              ),
              Row(
                children: [
                  Text("Packaging"),
                  CustomStarRating(starRating: 4,iconSize: 18,)
                ],
              ),
              Row(
                children: [
                  Text("Value for money"),
                  CustomStarRating(starRating: 4,iconSize: 18,)
                ],
              ),
              RoundedImageCard(
                width: 220,
                height: 220,
                radius: 16,
              ),
              Text("Top reviews from india"),




            ],
          ),
        ),
      )
    );
  }
}
