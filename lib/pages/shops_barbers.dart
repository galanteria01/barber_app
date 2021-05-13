import 'package:flutter/material.dart';

class ShopsBarbers extends StatelessWidget {
  String appbarText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            toolbarHeight: 84,
            title: Text(appbarText,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),),
            backgroundColor: Colors.white,
            centerTitle: true,
            leading: Image(image: AssetImage("assets/Filter.png"),),
          ),
        body: Container(

        ),
      )
    );
  }
}
