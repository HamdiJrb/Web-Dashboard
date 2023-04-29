import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 247, 109, 107)!,
              Color.fromARGB(255, 60, 5, 5)!
            ],
          ),
        ),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double screenWidth = constraints.maxWidth;
            double screenHeight = constraints.maxHeight;
            bool isSmallScreen = screenWidth < 768;

            return Column(
              children: [
                Container(
                  height:
                      isSmallScreen ? screenHeight * 0.4 : screenHeight * 0.6,
                  /*decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('Assets/images/logo_xxl.png'),
                      fit: BoxFit.cover,
                    ),
                  ),*/
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: isSmallScreen ? 20.0 : 40.0,
                      vertical: isSmallScreen ? 15.0 : 30.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Esprit Alumni App: Connect, Collaborate, and Elevate Your Career',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: isSmallScreen ? 24.0 : 48.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: isSmallScreen ? 10.0 : 20.0),
                        Text(
                          'Welcome to the Esprit Alumni App, a cutting-edge platform , exclusively designed for graduates of the Esprit School of Engineering. Our mission is to foster a strong, vibrant community that facilitates collaboration, professional networking, and career growth. Stay in the loop with the latest news, events, and opportunities while connecting with fellow alumni and accessing valuable career resources - all at your fingertips.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: isSmallScreen ? 12.0 : 22.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: isSmallScreen ? 20.0 : 40.0,
                      vertical: isSmallScreen ? 20.0 : 40.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Card(
                            child: Container(
                              height: isSmallScreen ? 250.0 : 500.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'Assets/images/profile.png',
                                    height: isSmallScreen ? 65.0 : 100.0,
                                  ),
                                  SizedBox(height: isSmallScreen ? 10.0 : 20.0),
                                  Text(
                                    'Profile',
                                    style: TextStyle(
                                      fontSize: isSmallScreen ? 12.0 : 24.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: isSmallScreen ? 5.0 : 10.0),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8.0),
                                    child: Text(
                                      'Users can create and update their profile to share information about their education and experience.',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: isSmallScreen ? 8.0 : 12.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: isSmallScreen ? 10.0 : 20.0),
                        Expanded(
                          child: Card(
                            child: Container(
                              height: isSmallScreen ? 250.0 : 500.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'Assets/images/chat.png',
                                    height: isSmallScreen ? 65.0 : 100.0,
                                  ),
                                  SizedBox(height: isSmallScreen ? 10.0 : 20.0),
                                  Text(
                                    'Chat',
                                    style: TextStyle(
                                      fontSize: isSmallScreen ? 12.0 : 24.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: isSmallScreen ? 5.0 : 10.0),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8.0),
                                    child: Text(
                                      'The app allows users to connect with other alumni in real-time through a built-in chat feature.',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: isSmallScreen ? 8.0 : 12.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: isSmallScreen ? 10.0 : 20.0),
                        Expanded(
                          child: Card(
                            child: Container(
                              height: isSmallScreen ? 250.0 : 500.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'Assets/images/computer_sc.png',
                                    height: isSmallScreen ? 65.0 : 100.0,
                                  ),
                                  SizedBox(height: isSmallScreen ? 10.0 : 20.0),
                                  Text(
                                    'Publishing',
                                    style: TextStyle(
                                      fontSize: isSmallScreen ? 12.0 : 24.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: isSmallScreen ? 5.0 : 10.0),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8.0),
                                    child: Text(
                                      'Users can publish articles, job offers and events.',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: isSmallScreen ? 8.0 : 12.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
