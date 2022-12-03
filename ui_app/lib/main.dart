import 'package:flutter/material.dart';
import 'package:ui_app/routes.dart';
import 'package:ui_app/src/screens/login/login_screen.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: LoginScreen.routeName,
    routes: routes,
  ));
}
