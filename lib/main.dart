import 'package:flutter/material.dart';
import 'package:portfolio_flutter/about.dart';
import 'package:portfolio_flutter/home.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: 'about',
      debugShowCheckedModeBanner: false,
      routes: {
        'home': (context) => MyHome(),
        'about': (context) => MyAbout(),
      },
    ),
  );
}
