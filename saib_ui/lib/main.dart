import 'package:flutter/material.dart';
import 'package:saib_ui/login.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {'login': (context) => MyLogin()},

  ));
}
