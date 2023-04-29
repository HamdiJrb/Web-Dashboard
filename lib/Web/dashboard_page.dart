import 'package:dashboard_web/Web/Specialties/sepecialties_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<Map<String, dynamic>> elements = [];

  @override
  void initState() {
    super.initState();
    elements = [
      {
        'title': 'In-Demand Fields',
        'imagePath': 'Assets/images/fields_graph.png',
        'onTap': navigateToFieldDetails,
      },
      {
        'title': 'Specialties Taught At Esprit',
        'imagePath': 'Assets/images/specialties.png',
        'onTap': navigateToSpecialties,
      },
      {
        'title': 'Employer Information',
        'imagePath': 'Assets/images/employer.png',
        'onTap': navigateToEmployerInfo,
      },
      {
        'title': 'Geographical Distribution of Alumni',
        'imagePath': 'Assets/images/geographic_graph.png',
        'onTap': navigateToGeographicDist,
      },
      {
        'title': 'Career Paths',
        'imagePath': 'Assets/images/career.png',
        'onTap': navigateToCareerPaths,
      },
    ];
  }

  void navigateToFieldDetails() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SpecialtiesDetail()),
    );
  }

  void navigateToSpecialties() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SpecialtiesDetail()),
    );
  }

  void navigateToEmployerInfo() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SpecialtiesDetail()),
    );
  }

  void navigateToGeographicDist() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SpecialtiesDetail()),
    );
  }

  void navigateToCareerPaths() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SpecialtiesDetail()),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Measuring the screen size
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final leftPadding = screenWidth / 2.5;
    final leftPadding1 = leftPadding.toInt();

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
            return Column(
              mainAxisSize: MainAxisSize
                  .min, // set the mainAxisSize property to MainAxisSize.min
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Image.asset(
                        'Assets/images/decoration_dashboard.png',
                        height: screenHeight / 3.5,
                        width: screenWidth / 2.5,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Text(
                        'Dashboard',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.only(
                          right: 20.0, bottom: 8.0, left: 30.0, top: 30.0),
                      child: GridView.extent(
                        maxCrossAxisExtent: 400.0,
                        crossAxisSpacing: 40.0,
                        mainAxisSpacing: 40.0,
                        children: elements.map((el) {
                          return GestureDetector(
                            onTap: elements[0]['onTap'],
                            child: Card(
                              elevation: 10.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    el['imagePath'],
                                    height: 150,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20,
                                        left: 22.0,
                                        right: 22.0,
                                        bottom: 5.0),
                                    child: Text(el['title'],
                                        style: TextStyle(
                                            fontFamily: 'Mukta Malar',
                                            fontSize: screenWidth / 60,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      )),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
