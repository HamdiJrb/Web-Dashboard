import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Experiences extends StatefulWidget {
  const Experiences({super.key});

  @override
  State<Experiences> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experiences> {
  List<Experience> experiences = [
    Experience(
      text1: 'Experience 1',
      text2: 'Description of experience 1',
      startDate: DateTime(2020, 1, 1),
      endDate: DateTime(2021, 1, 1),
    ),
    Experience(
      text1: 'Experience 2',
      text2: 'Description of experience 2',
      startDate: DateTime(2021, 1, 1),
      endDate: DateTime(2022, 1, 1),
    ),
    Experience(
      text1: 'Experience 1',
      text2: 'Description of experience 1',
      startDate: DateTime(2020, 1, 1),
      endDate: DateTime(2021, 1, 1),
    ),
  ];

  //Experiences({required this.experiences});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Experience Interface'),
      ),
      body: ListView.builder(
        itemCount: experiences.length,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 16.0),
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    child: Container(
                      margin: EdgeInsets.all(6.0),
                      height: 10.0,
                      width: 10.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    height: 65.0,
                    width: 2.0,
                    color: Color.fromARGB(255, 79, 71, 71),
                  ),
                ],
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 6.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        experiences[index].text1,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        experiences[index].text2,
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.date_range,
                            size: 16.0,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            '${experiences[index].startDate.day}/${experiences[index].startDate.month}/${experiences[index].startDate.year} - ${experiences[index].endDate.day}/${experiences[index].endDate.month}/${experiences[index].endDate.year}',
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0)
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class Experience {
  final String text1;
  final String text2;
  final DateTime startDate;
  final DateTime endDate;

  Experience({
    required this.text1,
    required this.text2,
    required this.startDate,
    required this.endDate,
  });
}
