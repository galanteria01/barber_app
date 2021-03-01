import 'package:flutter/material.dart';
import 'package:international_phone_input/international_phone_input.dart';


class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/barber-login.png"),
              fit: BoxFit.fill,
            )
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(height: 252,),
                    Text(
                     "Barber",
                      style: TextStyle(
                        fontSize: 36.0,
                        color: Colors.redAccent
                      ),
                    ),
                    Text(
                        "Booking",
                        style: TextStyle(
                          fontSize: 36.0,
                          color: Colors.redAccent
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 72,),
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    width: 300.0,
                    child: InternationalPhoneInput(
                      hintStyle: TextStyle(color: Colors.grey[600]),
                      decoration: InputDecoration(
                        hintText: "Mobile Number",
                        hintStyle: TextStyle(color: Colors.grey[600]),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)
                        ),
                        contentPadding: EdgeInsets.all(12.0),

                      ),

                    ),
                  ),
                ),
                SizedBox(height: 166,),
                RaisedButton(
                  child: Text(" Next ",style: TextStyle(fontSize: 24),),
                  onPressed: () {
                    Navigator.pushNamed(context, "/home");
                  },
                  color: Color(0xffef5350),
                  textColor: Colors.white,
                  splashColor: Colors.grey,
                  padding: EdgeInsets.fromLTRB(108, 14, 108, 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)
                  ),
                ),
              ],
            ),
          ),
        ),

      ),
    );
  }
}

