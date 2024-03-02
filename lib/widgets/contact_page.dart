// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    

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
  }
