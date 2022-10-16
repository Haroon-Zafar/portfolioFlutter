import 'package:flutter/material.dart';
import 'package:portfolio_flutter/about.dart';
import 'package:portfolio_flutter/home.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: 'home',
      debugShowCheckedModeBanner: false,
      routes: {
        'home': (context) => MyHome(),
        'about': (context) => MyAbout(),
      },
    ),
  );
}
