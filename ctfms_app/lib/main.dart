import 'package:ctfms_app/Pages/homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CTFMS App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(), // This is the initial screen of the app
      debugShowCheckedModeBanner: false,
    );
  }
}
