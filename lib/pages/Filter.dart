import 'package:barber_app/CustomComponent/CustomStarRating.dart';
import 'package:barber_app/cards/CategoryCard.dart';
import 'package:barber_app/cards/PastBookingsCard.dart';
import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {

  String appbarText = "Filter";
  RangeValues _currentValues = RangeValues(200,1200);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            toolbarHeight: 84,
            title: Text(appbarText, style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24),),
            backgroundColor: Colors.white,
            centerTitle: true,
            actions: [
              Image(image: AssetImage("assets/Filter.png"),)
            ],
          ),
          body: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Min Price"),
                          Text("Max Price")
                        ],
                      ),
                      RangeSlider(
                        values: _currentValues,
                        min: 100.0,
                        labels: RangeLabels(_currentValues.start.toString(),_currentValues.end.toString()),
                        max: 2000.0,
                        divisions: 10,
                        activeColor: Colors.redAccent,
                        inactiveColor: Colors.grey[200],
                        semanticFormatterCallback: (double newValue) {
                          return '${newValue.round()}';
                        },
                        onChanged: (RangeValues values){
                          setState(() {
                            _currentValues = values;
                          });
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Rs 200"),
                          Text("Rs 1000")
                        ],
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 24,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CategoryCard(text: "Near Me",imagePath: "assets/Icon material-near-me.png",widthGiven: 120,),
                    CategoryCard(text: "Top",imagePath: "assets/Top barber-Svg.png",widthGiven: 120,),
                    CategoryCard(text: "Favourites",imagePath: "assets/heart (-2.png",widthGiven: 125,)
                  ],
                ),
                PastBookingsCard(),
                CustomStarRating(iconSize: 32,starRating: 3,),
              ],
            ),
          ),
        )
    );
  }
}
