// ignore_for_file: unused_element

import 'package:flutter/material.dart';

import 'screen/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey),
        // Setting useMaterial3 to false since Material3 is still experimental
        useMaterial3: false,
      ),
      home: const MyHomePage(),
    );
  }
} 
