import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bookings extends StatefulWidget {
  @override
  _BookingsState createState() => _BookingsState();
}

class _BookingsState extends State<Bookings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          toolbarHeight: 84,
          title: Text("Bookings",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),),
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: Image(image: AssetImage("assets/Group 2215.png"),),
        ),
      ),
    );
  }
}
