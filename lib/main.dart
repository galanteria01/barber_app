import 'package:barber_app/pages/about.dart';
import 'package:barber_app/pages/customer_review.dart';
import 'package:barber_app/pages/filter.dart';
import 'package:barber_app/pages/home.dart';
import 'package:barber_app/pages/login.dart';
import 'package:barber_app/pages/saloon.dart';
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


