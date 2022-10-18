import 'package:flutter/material.dart';
import 'package:portfolio_flutter/about.dart';
import 'package:portfolio_flutter/home.dart';
import 'package:portfolio_flutter/projects.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: "Soho",
      ),
      initialRoute: 'home',
      debugShowCheckedModeBanner: false,
      routes: {
        'home': (context) => MyHome(),
        'about': (context) => MyAbout(),
        'projects': (context) => MyProjects(),
      },
    ),
  );
}
