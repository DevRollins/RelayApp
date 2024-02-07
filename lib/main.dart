import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // if the user is not logged in they will go to the login page
      home: LoginPage(),
      // if the user is logged in they will simply go to the home page
    );
  }
}