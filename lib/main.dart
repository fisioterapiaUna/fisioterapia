import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fisioterapia/screens/sign_in/sing_in_screen.dart';
import 'style_guide.dart';
import 'package:fisioterapia/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: SignInScreen.routeName,
      routes: routes,
    );
  }
}