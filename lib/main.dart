import 'package:flutter/material.dart';
import 'package:sharon_vincy/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ezeness Technology',
      home: SplashScreen(),
    );
  }
}