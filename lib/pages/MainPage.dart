import 'package:barber_app/cards/CategoryCard.dart';
import 'package:barber_app/cards/QueueCard.dart';
import 'package:barber_app/cards/RoundedImageCard.dart';
import 'package:barber_app/cards/ShopBarberCards.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                        child: Column(
                          children: [
                            Text(
                              "Location",
                              style: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                            Text(
                              "Vidisha",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w600
                              ),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () { Navigator.pushNamed(context, '/about'); },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 16, 16, 0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/Ellipse 6.png"),
                            minRadius: 28,

                          ),
                        ),
                      ),
                    ],
                  )
              ),
              SizedBox(height: 24,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Now you're in",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
                  Text("4th queue",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600),)
                ],
              ),
              QueueCard(),
              Text("Discover By Categories",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(child: CategoryCard(imagePath: "assets/Location-Svg.png",text: "Near Me",)),
                  GestureDetector(child: CategoryCard(imagePath: "assets/Outline.png",text: "Top Barbers",)),
                  GestureDetector(child: CategoryCard(imagePath: "assets/Heart-Svg.png",text: "Favourites",)),
                ],
              ),
              SizedBox(height: 12,),
              Text("Recent Bookings",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
              SizedBox(height: 14,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RoundedImageCard(height: 165,width: 165,radius: 16,),
                  RoundedImageCard(height: 165,width: 165,radius: 16,)
                ],
              )

            ],
          ),
        ),
      )
    );
  }
}
