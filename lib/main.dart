// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentNav = 0;

  Widget homePageInfo() {
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

  Widget personalInfoPage() {
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

  // ignore: non_constant_identifier_names
  Widget ProjectPage() {
    return Stack(children: [
      Image.asset(
        'assets/images/Group 2.png',
        width: 200, // Adjust width as needed
        height: 200, // Adjust height as needed
      ),
      Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(70, 330, 0, 10),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/School ID 9.png',
                        width: 300, // Adjust width as needed
                        height: 300, // Adjust height as needed
                      ),
                      const Text(
                        'School ID App',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(70, 330, 0, 10),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/School ID.webp',
                        width: 300, // Adjust width as needed
                        height: 300, // Adjust height as needed
                      ),
                      const Text(
                        'School ID App',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(70, 330, 0, 10),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/School ID 1.webp',
                        width: 300, // Adjust width as needed
                        height: 300, // Adjust height as needed
                      ),
                      const Text(
                        'School ID App',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(70, 330, 0, 10),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/School ID 0.webp',
                        width: 300, // Adjust width as needed
                        height: 300, // Adjust height as needed
                      ),
                      const Text(
                        'School ID App',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(70, 330, 0, 10),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/PortfolioApp1.png',
                        width: 300, // Adjust width as needed
                        height: 300, // Adjust height as needed
                      ),
                      const Text(
                        'Portfolio App',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(70, 330, 0, 10),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/Portfolioapp3.png',
                        width: 300, // Adjust width as needed
                        height: 300, // Adjust height as needed
                      ),
                      const Text(
                        'Portfolio App',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(70, 330, 0, 10),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/Portfolioapp2.png',
                        width: 300, // Adjust width as needed
                        height: 300, // Adjust height as needed
                      ),
                      const Text(
                        'Portfolio App',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      )
    ]);
  }

  // ignore: non_constant_identifier_names
  Widget ContactPage() {

   Future<void> launcInstahUrl() async {
  final instagramUrl = Uri(
    scheme: 'https',
    host: 'www.instagram.com',
    path: 'akshaykumar/?hl=en', // Add the path for the Instagram profile if needed
  );
   

  if (!await launchUrl(instagramUrl)) {
    throw Exception('Could not launch Instagram');
  }

  await launchUrl(instagramUrl);
}


Future<void> launchEmailUrl()async{
 final Uri emailLaunchUrl = Uri(
    scheme: 'mailto',
    path: 'harshjaiswal833@gmail.com',
    queryParameters: {
      'subject': 'Example Subject & Symbols are allowed!',
    });
     if (!await launchUrl(emailLaunchUrl)){
    throw Exception('Could not launch email');
  }
  
  await launchUrl(emailLaunchUrl);
}
 Future<void> launcLinkedinUrl() async {
  final Uri LinkedinUrl = Uri(
    scheme: 'https',
    host: 'www.linkedin.com',
    path: 'harsh-jaiswal-58942514b/', // Add the path for the Instagram profile if needed
  );

  if (!await launchUrl(LinkedinUrl)) {
    throw Exception('Could not launch Instagram');
  }

  await launchUrl(LinkedinUrl);
}


  



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
        
         Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Get In Touch', // Added title "Get In Touch"
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.all(8.0),
           
                child: Text(
                  'Do you have a new project or job for me? Or just want to have a  chat, feel free to connect.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              
              Row(
                
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               
                IconButton(
                  onPressed: ()async{
                    
                    await launchEmailUrl();// Handle Gmail button press
                    
                  },
                  icon: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.mail, color: Colors.white, ),
                  ),
               
                ),
                GestureDetector(
                  onTap: ()async {
                   await launcInstahUrl();
                 },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/instagram.png", width: 30, height: 30),
                  ),),
                   GestureDetector(
                  onTap: ()async {
                    await launcLinkedinUrl();
                 },
                 
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/linkedin.png", width: 30, height: 30),
                  ),)
                
                ],
             
            ),
            
          ],
        
        ),
      ),
    ],
      ))]);
}
     

  @override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.purple,
    body: Column(
      
      children: [
        Expanded(
          child: currentNav == 0
              ? homePageInfo()
              : currentNav == 1
                  ? personalInfoPage()
                  : currentNav == 2
                      ? ProjectPage()
                      : ContactPage(),
        ),
        if(currentNav == 3)
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Copyright 2024 Harsh Jaiswal. All Rights Reserved.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12, // Adjust the font size as needed
            ),
            textAlign: TextAlign.center,
          ),
        ), 
      ],
    ),
      bottomNavigationBar: Builder(
        builder: (BuildContext context) {
          return BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.purple,
            elevation: 5,
            currentIndex: currentNav,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.info),
                label: 'info',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.apps),
                label: 'projects',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'contacts',
              ),
            ],
            onTap: (int index) {
              if (index == 0) {
                // Index 1 corresponds to the "info" icon
                setState(() {
                  currentNav = 0;
                });
              }
              if (index == 1) {
                // Index 1 corresponds to the "info" icon
                setState(() {
                  currentNav = 1;
                });
              }
              if (index == 2) {
                // Index 1 corresponds to the "info" icon
                setState(() {
                  currentNav = 2;
                });
              }
              if (index == 3) {
                setState(() {
                  currentNav = 3;
                });
              }
            },
          );
        },
      ),
    );
  }
}
