import 'package:dashboard_web/Web/Specialties/civil.dart';
import 'package:dashboard_web/Web/Specialties/computer_science.dart';
import 'package:dashboard_web/Web/Specialties/electro.dart';
import 'package:dashboard_web/Web/Specialties/telecom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SpecialtiesDetail extends StatefulWidget {
  const SpecialtiesDetail({Key? key}) : super(key: key);

  @override
  State<SpecialtiesDetail> createState() => _SpecialtiesDetailState();
}

class _SpecialtiesDetailState extends State<SpecialtiesDetail> {
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
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Specialties Taught At Esprit',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Mukta Malar',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildContainerXL(
                        Icons.computer,
                        'COMPUTER SCIENCE',
                        'Mastery of software engineering techniques (methods, languages & tools) and user interaction for the design of embedded software and information systems.',
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ComputeScience()),
                        ),
                      ),
                      SizedBox(height: 25.0),
                      _buildContainerXL(
                        Icons.network_check,
                        'TELECOMMUNICATIONS',
                        'Participate in the optimization of communication systems, from research to the design of equipment and services, through network infrastructure management.',
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Telecommunications()),
                        ),
                      ),
                      SizedBox(height: 25.0),
                      _buildContainerXL(
                        Icons.construction_outlined,
                        'CIVIL ENGINEERING',
                        'Work on designing new structures, assessing the safety and stability of existing structures, and developing plans to manage environmental risks.',
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Civil()),
                        ),
                      ),
                      SizedBox(height: 25.0),
                      _buildContainerXL(
                        Icons.miscellaneous_services,
                        'ELECTROMECHANICS',
                        'Work on designing control systems for machines and robots to developing renewable energy systems.',
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Elecro()),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContainerXL(
      IconData iconData, String title, String text, VoidCallback onTap) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    final containerWidth = MediaQuery.of(context).size.width /
        (isPortrait
            ? 1.17
            : 2.3); // adjust container width based on orientation
    final containerHeight = MediaQuery.of(context).size.height /
        (isPortrait
            ? 2.96
            : 1.7); // adjust container height based on orientation

    return GestureDetector(
      //onTap: onTap,
      child: Container(
        width: containerWidth,
        //height: containerHeight,
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
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    iconData,
                    size: isPortrait ? 40.0 : 60.0,
                    color: Color.fromARGB(255, 112, 0, 0),
                  ),
                  //Image.asset(imagePath, width: 40.0, height: 40.0),
                  SizedBox(width: isPortrait ? 15 : 25),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: isPortrait ? 20 : 26,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Mukta Malar',
                          color: Color.fromARGB(255, 178, 0, 0)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: isPortrait ? 15 : 25),
              Text(
                text,
                style: TextStyle(
                    fontSize: isPortrait ? 18 : 24,
                    fontFamily: 'Mukta Malar',
                    color: Colors.grey[800]),
              ),
              SizedBox(height: isPortrait ? 8 : 15),
              Row(
                mainAxisAlignment: isPortrait
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: onTap,
                    child: Text('See More..',
                        style: TextStyle(
                            fontSize: isPortrait ? 14 : 18,
                            fontFamily: 'Mukta Malar',
                            color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 178, 0, 0),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
