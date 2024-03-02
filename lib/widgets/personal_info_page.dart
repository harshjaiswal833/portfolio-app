import 'package:flutter/material.dart';

class PersonalInfoPage extends StatelessWidget {
  const PersonalInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
        const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Hi, I’m Harsh Jaiswal. I’m from Lucknow in India. I’m an engineer and I love to design and build mobile applications as well as code. I also like to travel and watch cricket.'
                  'I have been working as a freelancer in Sitapur based startup company named as School ID for almost one and a half years. I am a quick learner and also very passionate about my work.'
                  'I like to design mobile apps. My favourite  tools are Figma, android studio and visual studio code. I am keen to learn new things and progress in my career.',
                  style: TextStyle(fontSize: 22, color: Colors.white),
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