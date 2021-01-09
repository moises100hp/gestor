import 'package:flutter/material.dart';
import 'package:pedidodeliveryapp/screens/Home.dart';
import 'package:pedidodeliveryapp/screens/splash.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Color(0xFF662d91)),
    home: SplashScreen(),
  ));
}

