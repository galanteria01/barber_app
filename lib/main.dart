import 'package:barber_app/pages/About.dart';
import 'package:barber_app/pages/CustomerReview.dart';
import 'package:barber_app/pages/Filter.dart';
import 'package:barber_app/pages/Home.dart';
import 'package:barber_app/pages/Login.dart';
import 'package:barber_app/pages/Sallon.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/customer',
    routes: {
      '/login':(context) => Login(),
      '/home':(context) => Home(),
      '/sallon':(context) => Sallon(),
      '/about':(context) => About(),
      '/filter':(context) => Filter(),
      '/customer':(context) => CustomerReview(),
    },
  ));
}


