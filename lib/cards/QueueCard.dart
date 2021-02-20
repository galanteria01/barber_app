import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QueueCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      margin: EdgeInsets.all(16),
      color: Color(0xffff8a80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("dex barber",style: TextStyle(color: Colors.white,fontSize: 16),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("2.6 k.m",style: TextStyle(color: Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("estimated 50 mins",style: TextStyle(color: Colors.white),),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Image(image: AssetImage("assets/Icon ionic-ios-arrow-back.png"),color: Colors.white,),
          )
        ],
      ),
    );
  }
}
