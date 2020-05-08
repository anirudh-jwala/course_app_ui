import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String assetImage;
  final String courseName;
  final String coursePrice;
  final Color bgColor;

  const CourseCard({
    Key key,
    @required this.assetImage,
    @required this.courseName,
    @required this.coursePrice,
    @required this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            width: 335.0,
            height: MediaQuery.of(context).size.height / 1.4,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          Positioned(
            bottom: 30.0,
            child: Image.asset(assetImage),
          ),
          Positioned(
            top: 40.0,
            child: Column(
              children: <Widget>[
                Text(
                  courseName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 36.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Just \$$coursePrice",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 120.0,
            child: FlatButton.icon(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              onPressed: () {
                print("Button Clicked");
              },
              icon: Icon(
                Icons.exit_to_app,
                color: bgColor,
              ),
              label: Text(
                "Buy Now",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                  color: bgColor,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            child: Container(
              width: 335.0,
              height: 30.0,
              color: Colors.white,
              child: Center(
                child: Text(
                  "By Anirudh Jwala",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: bgColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
