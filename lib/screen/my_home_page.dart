
import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/home_page_info.dart';
import 'package:flutter_application_2/widgets/personal_info_page.dart';
import 'package:flutter_application_2/widgets/project_page.dart';

import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentNav = 0;

 

  // ignore: non_constant_identifier_names


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
              ? const HomePageInfo()
              : currentNav == 1
                  ? const PersonalInfoPage()
                  : currentNav == 2
                      ? const ProjectPage()
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
