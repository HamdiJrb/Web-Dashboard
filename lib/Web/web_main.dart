import 'package:dashboard_web/Web/dashboard_page.dart';
import 'package:dashboard_web/Web/home_page.dart';
import 'package:dashboard_web/Web/Specialties/sepecialties_detail.dart';
import 'package:flutter/material.dart';

class WebMain extends StatefulWidget {
  const WebMain({super.key});

  @override
  State<WebMain> createState() => _WebMainState();
}

class _WebMainState extends State<WebMain> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomePage(),
    DashboardPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double screenWidth = constraints.maxWidth;
          double screenHeight = constraints.maxHeight;

          bool isSmallScreen = screenWidth < 768;

          return Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 0),
                child: SizedBox(
                  width: isSmallScreen ? 120 : 230,
                  child: NavigationRail(
                    minWidth: 300,
                    backgroundColor: Color.fromARGB(217, 217, 217, 217),
                    indicatorColor: Color.fromARGB(255, 240, 160, 154),
                    leading: Padding(
                      padding: const EdgeInsets.only(
                          top: 2.0, bottom: 0.0, left: 4.0, right: 4.0),
                      child: Image.asset(
                        'Assets/images/logo_dashboard.png',
                        height: 100,
                      ),
                    ),
                    selectedIndex: _selectedIndex,
                    onDestinationSelected: (int index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    labelType: NavigationRailLabelType.selected,
                    destinations: [
                      NavigationRailDestination(
                        icon: Icon(Icons.home, color: Colors.red, size: 30),
                        label: Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12.0,
                                horizontal:
                                    4.0), // adjust the padding values as desired
                            child: Text(
                              'Home',
                              style: TextStyle(
                                fontFamily: 'Mukta Malar',
                                fontSize: isSmallScreen ? 12 : 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          flex: 1,
                        ),
                      ),
                      NavigationRailDestination(
                        icon:
                            Icon(Icons.dashboard, color: Colors.red, size: 30),
                        label: Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12.0,
                                horizontal:
                                    4.0), // adjust the padding values as desired
                            child: Text(
                              'Dashboard',
                              style: TextStyle(
                                fontFamily: 'Mukta Malar',
                                fontSize: isSmallScreen ? 12 : 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          flex: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              VerticalDivider(thickness: 1, width: 1),
              Expanded(
                child: _screens[_selectedIndex],
              ),
            ],
          );
        },
      ),
    );
  }
}

  /*@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: 230,
            child: NavigationRail(
              minWidth: 190,
              backgroundColor: Color.fromARGB(217, 217, 217, 217),
              indicatorColor: Color.fromARGB(255, 240, 160, 154),
              leading: Padding(
                padding: const EdgeInsets.only(
                    top: 2.0, bottom: 80.0, left: 4.0, right: 4.0),
                child: Image.asset(
                  'Assets/images/logo_dashboard.png',
                  height: 100,
                ),
              ),
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              labelType: NavigationRailLabelType.selected,
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.home, color: Colors.red, size: 30),
                  label: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Home',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.dashboard, color: Colors.red, size: 30),
                  label: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Dashboard',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: _screens[_selectedIndex],
            flex: 5,
          ),
        ],
      ),
    );
  }
}*/
