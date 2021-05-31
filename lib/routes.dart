import 'package:flutter/material.dart';
import 'package:fisioterapia/screens/home/home_screen.dart';
import 'screens/sign_in/sing_in_screen.dart';
import 'package:fisioterapia/Home.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  // .routeName: (context) => (),
  SignInScreen.routeName: (context) => SignInScreen(),
  HomeScreen.routeName: (context) => HomeScreen(), 
};
