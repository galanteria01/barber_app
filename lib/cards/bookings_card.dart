import 'package:barber_app/cards/rounded_image.dart';
import 'package:flutter/material.dart';

class BookingsCard extends StatelessWidget {
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
                      Align(child: RoundedImageCard(height: 90,width: 90,radius: 12,),alignment: Alignment.center,),
                      SizedBox(width: 32,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Sam will be in",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                          SizedBox(height: 10,),
                          Text("Hair | Shave | Facial"),
                          SizedBox(height: 6,),
                          Text("Rs 850")
                        ],
                      ),
                      SizedBox(width: 36,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("20 min"),
                          SizedBox(height: 32,),
                          Image(image: AssetImage("assets/Icon zocial-paypal.png"))
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 8,),
                  Center(
                    child: Text("Pay Now",style: TextStyle(fontSize: 18,color: Colors.redAccent),),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
