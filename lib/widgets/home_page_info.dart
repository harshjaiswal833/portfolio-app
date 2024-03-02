import 'package:flutter/material.dart';

class HomePageInfo extends StatelessWidget {
  const HomePageInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Positioned(
          top: 20,
          right: 220,
          child: Image.asset(
            'assets/images/Group 2.png',
            width: 200, // Adjust width as needed
            height: 200, // Adjust height as needed
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/Ellipse 2.png',
                width: 200, // Adjust width as needed
                height: 200, // Adjust height as needed
              ),
              const SizedBox(height: 20),
              const Text(
                'HARSH JAISWAL',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'I’m a Flutter Developer for mobile application from India.',
                  style: TextStyle(fontSize: 28, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  
  }
}