import 'package:dashboard_web/Mobile/specialties.dart';
import 'package:flutter/material.dart';

class MobileDashboard extends StatefulWidget {
  const MobileDashboard({super.key});

  @override
  State<MobileDashboard> createState() => _MobileDashboardState();
}

class _MobileDashboardState extends State<MobileDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 45.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Dashboard',
                  style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Mukta Malar'),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildContainerXL(
                    'Assets/images/fields_graph.png',
                    'In-Demand Fields',
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Specialties()),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildContainer(
                        'Assets/images/specialties.png',
                        'Specialties Taught',
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Specialties()),
                        ),
                      ),
                      _buildContainer(
                        'Assets/images/employer.png',
                        'Employer Information',
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Specialties()),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildContainer(
                        'Assets/images/geographic_graph.png',
                        'Geographical Distribution',
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Specialties()),
                        ),
                      ),
                      _buildContainer(
                        'Assets/images/career.png',
                        'Career Paths',
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Specialties()),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContainer(String imagePath, String text, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
          color: Colors.white,
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 8.0, bottom: 0.0, left: 4.0, right: 4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(imagePath, width: 80.0, height: 80.0),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, bottom: 3.0, left: 4.0, right: 4),
                child: Text(text,
                    style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Mukta Malar'),
                    textAlign: TextAlign.center),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContainerXL(String imagePath, String text, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width / 1.17,
        height: MediaQuery.of(context).size.height / 3.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
          color: Colors.white,
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 4.0, bottom: 4.0, left: 4.0, right: 4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imagePath, width: 145.0, height: 145.0),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, bottom: 4.0, left: 4.0, right: 4),
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Mukta Malar'),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
