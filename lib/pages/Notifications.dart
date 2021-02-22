import 'package:barber_app/cards/NotificationCard.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            toolbarHeight: 84,
            title: Text("Notifications",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),),
            backgroundColor: Colors.white,
            centerTitle: true,
            leading: Image(image: AssetImage("assets/Icon ionic-ios-notifications.png"),),
          ),
        body: Container(
          child: Column(
            children: [
              NotificationCard(),

            ],
          ),
        ),
      )
    );
  }
}
