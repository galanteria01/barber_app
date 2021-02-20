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
                borderRadius: BorderRadius.circular(12)
            ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Image(image: AssetImage("assets/sample.jpg"),height: 92,width: 92,),
                    SizedBox(width: 20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Dee's Shop",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                        ),
                        Text("Hair | Shave | Facial"),
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
