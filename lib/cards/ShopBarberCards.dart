import 'package:flutter/material.dart';

class ShopBarberCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
            ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image(
                      image: AssetImage("assets/sample.jpg"),
                    height: 72,
                    width: 72,
                  ),
                ),
              ), // image
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Sam's Pleace",style: TextStyle(fontWeight: FontWeight.bold),), // shop/owner name
                  Text("Rs 300+"), // price
                  Text("7th street sanbujrang amalsad,"), // address
                  Text("Navsari"), // town
                ],
              )
            ],
          )
        ),
      )
    );
  }
}
