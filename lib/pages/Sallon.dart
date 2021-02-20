import 'package:flutter/material.dart';

class Sallon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image(image: AssetImage("assets/sample.jpg"),height: 300,width: 300,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(image: AssetImage("assets/sample.jpg"),height: 80,width: 80,),
                    Image(image: AssetImage("assets/sample.jpg"),height: 80,width: 80,),
                    Image(image: AssetImage("assets/sample.jpg"),height: 80,width: 80,),
                    Image(image: AssetImage("assets/sample.jpg"),height: 80,width: 80,)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sam's Place",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                      ),),
                      Text("2km",style: TextStyle(
                        fontSize: 20
                      ),),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text("Rs 300+",style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w300
                    ),),
                    Image(image: AssetImage("assets/"),)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "7th street yugolasvia",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(16),

                        ),
                        padding: EdgeInsets.all(6),
                        child: Row(
                          children: [
                            Text("4.5",style: TextStyle(color: Colors.white,fontSize: 8),),
                            SizedBox(width: 18,),
                            Icon(Icons.star,color: Colors.white,size: 8,)
                          ],
                        ),
                      ),
                    Text("102 ratings and 12 reviews",style: TextStyle(fontSize: 8,fontWeight: FontWeight.w200),)
                  ],
                ),
                SizedBox(height: 42,),
                RaisedButton(
                  onPressed: () {},
                  child: Text("Book Now",style: TextStyle(fontSize: 18),),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0)
                  ),
                  color: Colors.redAccent,
                  padding: EdgeInsets.fromLTRB(108, 24, 108, 24),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
