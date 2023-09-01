import 'package:flutter/material.dart';
import 'package:saib_ui/landing.dart';
import 'package:saib_ui/login.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'landing',
    routes: {'landing': (context) => MyLanding()},

  ));
}
