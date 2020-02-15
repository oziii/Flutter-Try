import 'package:flutter/material.dart';
import './interface/homepage.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => HomePage(),
    },
  ));
}