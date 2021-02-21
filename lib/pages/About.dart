import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          toolbarHeight: 84,
          title: Text("Profile",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),),
          backgroundColor: Colors.white,
          centerTitle: true,
          actions: [
            IconButton(icon: Icon(Icons.edit,color: Colors.black,), onPressed: () {})
          ],

        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40,),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/Ellipse 6.png"),
                  maxRadius: 56,
                ),
              SizedBox(height: 24,),
              TextField(
                decoration: InputDecoration(
                    hintText: "Full name",
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 16),
                ),
                maxLines: 1,
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 24,),
              TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 16),
                ),
                maxLines: 1,
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 24,),
              TextField(
                decoration: InputDecoration(
                    hintText: "Phone Number",
                  hintStyle: TextStyle(color: Colors.grey,fontSize: 16),
                ),
                maxLines: 1,
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 24,),
              TextField(
                decoration: InputDecoration(
                    hintText: "Location",
                    hintStyle: TextStyle(color: Colors.grey,fontSize: 16),
                ),
                maxLines: 1,
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      )
    );
  }
}
