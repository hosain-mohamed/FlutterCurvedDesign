import 'package:flutter/material.dart';
import 'package:flutter_app/ReusableSacffold.dart';

import 'FoodRow.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

double screenHeight;
double screenWidth;

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return ReusableSacffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
                top: screenHeight * 0.05,
                bottom: screenHeight * 0.02,
                left: screenWidth * 0.04,
                right: screenWidth * 0.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Container(
                  //color: Colors.red,
                  width: screenWidth * 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.12),
            child: Row(
              children: <Widget>[
                Text(
                  "Healthy",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.03,
                ),
                Text(
                  "Food",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w200,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            child: Container(),
            height: screenHeight * 0.05,
          ),
          Expanded(
            child: Container(
              width: screenWidth,
              height: screenHeight * .5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(100)),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: screenHeight * 0.06,
                  bottom: screenHeight * 0.02,
                  left: screenWidth * 0.15,
                  right: screenWidth * 0.1,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: screenHeight * 0.55,
                      child: ListView(
                        children: <Widget>[
                          FoodRow(
                              foodPrice: 18.50,
                              foodTitle: "Tona Fish",
                              imagePath: 'images/plate.png',
                              screenHeight: screenHeight,
                              screenWidth: screenWidth),
                          FoodRow(
                              foodPrice: 18.50,
                              foodTitle: "Tona Fish",
                              imagePath: 'images/plate.png',
                              screenHeight: screenHeight,
                              screenWidth: screenWidth),
                          FoodRow(
                              foodPrice: 18.50,
                              foodTitle: "Tona Fish",
                              imagePath: 'images/plate.png',
                              screenHeight: screenHeight,
                              screenWidth: screenWidth),
                          FoodRow(
                              foodPrice: 18.50,
                              foodTitle: "Tona Fish",
                              imagePath: 'images/plate.png',
                              screenHeight: screenHeight,
                              screenWidth: screenWidth),
                          FoodRow(
                              foodPrice: 18.50,
                              foodTitle: "Tona Fish",
                              imagePath: 'images/plate.png',
                              screenHeight: screenHeight,
                              screenWidth: screenWidth),
                          FoodRow(
                              foodPrice: 18.50,
                              foodTitle: "Tona Fish",
                              imagePath: 'images/plate.png',
                              screenHeight: screenHeight,
                              screenWidth: screenWidth),
                          FoodRow(
                              foodPrice: 18.50,
                              foodTitle: "Tona Fish",
                              imagePath: 'images/plate.png',
                              screenHeight: screenHeight,
                              screenWidth: screenWidth),
                          FoodRow(
                              foodPrice: 18.50,
                              foodTitle: "Tona Fish",
                              imagePath: 'images/plate.png',
                              screenHeight: screenHeight,
                              screenWidth: screenWidth),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        BottomIcon(Icons.search),
                        BottomIcon(Icons.shopping_cart),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFF1C1428),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(screenWidth * 0.035),
                            child: Text(
                              "checkout",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomIcon extends StatelessWidget {
  BottomIcon(this.icons);
  final IconData icons;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 1, color: Colors.grey),
      ),
      child: IconButton(
          padding: EdgeInsets.all(screenWidth * 0.01),
          icon: Icon(icons, color: Colors.black),
          onPressed: null),
    );
  }
}
