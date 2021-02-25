import 'package:barber_app/CustomComponent/CustomStarRating.dart';
import 'package:barber_app/cards/RoundedImageCard.dart';
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
              Text("Customer Reviews"),
              Row(
                children: [
                  CustomStarRating(starRating: 4,iconSize: 24,),
                  Text("4 out of 5")
                ],
              ),
              Text("70 global ratings"),
              Divider(color: Colors.grey,),
              Text("By features"),
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