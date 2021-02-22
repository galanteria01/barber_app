import 'package:barber_app/cards/RoundedImageCard.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child : Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
            ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    RoundedImageCard(height: 90,width: 90,radius: 12,),
                    SizedBox(width: 20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Dee's Shop",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                        SizedBox(height: 10,),
                        Text("Hair | Shave | Facial"),
                        SizedBox(height: 6,),
                        Text("Rs 850")
                      ],
                    ),
                    SizedBox(width: 20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Yesterday"),
                        Image(image: AssetImage("assets/Icon awesome-money-bill.png"))
                      ],
                    )
                  ],
                ),
                SizedBox(height: 8,),
                Center(
                  child: Text("Rate Now",style: TextStyle(fontSize: 18,color: Colors.redAccent),),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
