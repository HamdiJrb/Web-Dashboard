import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InDemandFields extends StatefulWidget {
  const InDemandFields({super.key});

  @override
  State<InDemandFields> createState() => _InDemandFieldsState();
}

class _InDemandFieldsState extends State<InDemandFields> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double screenWidth = constraints.maxWidth;
        double screenHeight = constraints.maxHeight;
        bool isSmallScreen = screenWidth < 768;

        return Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 255, 137, 135)!,
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
                          'In-Demand Fields',
                          style: TextStyle(
                              fontSize:
                                  constraints.maxWidth < 600 ? 26.0 : 32.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Mukta Malar',
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 25.0),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
