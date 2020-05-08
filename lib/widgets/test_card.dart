import 'package:courseappui/colors.dart';
import 'package:flutter/material.dart';

class TestCard extends StatelessWidget {
  final String assetImage;
  final String testName;
  final String testPrice;

  const TestCard({
    Key key,
    @required this.assetImage,
    @required this.testName,
    @required this.testPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: 335.0,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                    image: AssetImage(assetImage),
                    fit: BoxFit.cover,
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
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 40.0,
            child: Column(
              children: <Widget>[
                Text(
                  testName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 36.0,
                    color: LCOorange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Just \$$testPrice",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: LCOorange,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 40.0,
            child: FlatButton.icon(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              onPressed: () {
                print("Button Clicked");
              },
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              label: Text(
                "Buy Now",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
