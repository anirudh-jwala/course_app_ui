import 'package:courseappui/colors.dart';
import 'package:courseappui/widgets/course_card.dart';
import 'package:courseappui/widgets/test_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StorePage extends StatefulWidget {
  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  List<Color> courseListColor = [
    LCOred,
    LCOorange,
    LCOlightgreen,
    LCOgreen,
    LCOblue
  ];

  List<Color> bundleListColor = [
    LCOlightgreen,
    LCOgreen,
    LCOblue,
    LCOorange,
    LCOred
  ];

  List<List<String>> courseList = [
    [
      "assets/images/img-1.png",
      "React JS course",
      "2.5",
    ],
    [
      "assets/images/img-2.png",
      "MERN Bootcamp",
      "2.5",
    ],
    [
      "assets/images/img-3.png",
      "Flutter Bootcamp",
      "10.5",
    ],
    [
      "assets/images/img-4.png",
      "Front End course",
      "8.5",
    ],
    [
      "assets/images/img-5.png",
      "Node JS course",
      "8.5",
    ]
  ];

  List<List<String>> bundleList = [
    [
      "assets/images/img-3.png",
      "Android P and Java",
      "2.5",
    ],
    [
      "assets/images/img-5.png",
      "Flutter Dart Bundle",
      "2.5",
    ],
    [
      "assets/images/img-1.png",
      "Front End + Node Js",
      "10.5",
    ],
    [
      "assets/images/img-2.png",
      "Front End + Django",
      "8.5",
    ],
    [
      "assets/images/img-4.png",
      "React Native",
      "8.5",
    ]
  ];

  List<List<String>> testList = [
    [
      "C++ Test",
      "1.5",
    ],
    [
      "Aptitude Test",
      "2.5",
    ],
    [
      "Java Interview Prep",
      "10.5",
    ],
    [
      "Mock Interview",
      "8.5",
    ],
    [
      "Youtuber Prep",
      "8.5",
    ]
  ];

  @override
  void initState() {
    super.initState();
    setState(() {
      courseListColor.shuffle();
      bundleListColor.shuffle();
      courseList.shuffle();
      bundleList.shuffle();
      testList.shuffle();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 14.0, 0.0, 8.0),
                child: Text(
                  "Courses",
                  style: TextStyle(
                    fontSize: 28.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.4,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: courseList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CourseCard(
                        assetImage: courseList[index][0],
                        courseName: courseList[index][1],
                        coursePrice: courseList[index][2],
                        bgColor: courseListColor[index],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 14.0, 0.0, 8.0),
                child: Text(
                  "Bundles",
                  style: TextStyle(
                    fontSize: 28.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.4,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: courseList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CourseCard(
                        assetImage: bundleList[index][0],
                        courseName: bundleList[index][1],
                        coursePrice: bundleList[index][2],
                        bgColor: bundleListColor[index],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 14.0, 0.0, 8.0),
                child: Text(
                  "Tests",
                  style: TextStyle(
                    fontSize: 28.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: courseList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TestCard(
                        testName: testList[index][0],
                        testPrice: testList[index][1],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
