import 'package:barber_app/cards/RoundedImageCard.dart';
import 'package:flutter/material.dart';

class PastBookingsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
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
                      Align(child: RoundedImageCard(height: 90,width: 90,radius: 12,),alignment: Alignment.center,),
                      SizedBox(width: 32,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dee's Shop",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                          SizedBox(height: 4,),
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
                          SizedBox(height: 32,),
                          Image(image: AssetImage("assets/Icon awesome-money-bill.png"))
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
