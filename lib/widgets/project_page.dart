import 'package:flutter/material.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  padding: const EdgeInsets.fromLTRB(70, 230,90, 0),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/School ID 9.png',
                        width: 400, // Adjust width as needed
                        height: 400, // Adjust height as needed
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
                  padding: const EdgeInsets.fromLTRB(70, 230, 0, 10),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/School ID.webp',
                        width: 400, // Adjust width as needed
                        height: 400, // Adjust height as needed
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
                  padding: const EdgeInsets.fromLTRB(70, 230, 0, 10),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/School ID 1.webp',
                        width: 400, // Adjust width as needed
                        height: 400, // Adjust height as needed
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
                  padding: const EdgeInsets.fromLTRB(70, 230, 0, 10),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/School ID 0.webp',
                        width: 400, // Adjust width as needed
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
                  padding: const EdgeInsets.fromLTRB(70, 230, 0, 10),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/PortfolioApp1.png',
                        width: 400, // Adjust width as needed
                        height: 400, // Adjust height as needed
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
                  padding: const EdgeInsets.fromLTRB(70, 230, 0, 10),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/Portfolioapp3.png',
                        width: 400, // Adjust width as needed
                        height: 400, // Adjust height as needed
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
                  padding: const EdgeInsets.fromLTRB(70, 230, 0, 10),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/Portfolioapp2.png',
                        width: 400, // Adjust width as needed
                        height: 400, // Adjust height as needed
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

  }
