import 'package:courseappui/screens/course_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course App UI',
      home: CoursePage(title: "Course App"),
      debugShowCheckedModeBanner: false,
    );
  }
}
