import 'package:barber_app/pages/Home.dart';
import 'package:barber_app/pages/Login.dart';
import 'package:barber_app/pages/Sallon.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/sallon',
    routes: {
      '/login':(context) => Login(),
      '/home':(context) => Home(),
      '/sallon':(context) => Sallon(),
      '/about':(context) => About(),
    },
  ));
}

