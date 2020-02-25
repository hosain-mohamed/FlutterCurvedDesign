import 'package:flutter/material.dart';

class FoodRow extends StatelessWidget {
  FoodRow({
    @required this.screenHeight,
    @required this.screenWidth,
    @required this.imagePath,
    @required this.foodPrice,
    @required this.foodTitle,
  });
  final String imagePath;
  final double foodPrice;
  final String foodTitle;
  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              child: Row(
            children: <Widget>[
              Image(image: AssetImage(imagePath)),
              SizedBox(width: screenWidth * 0.02),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      foodTitle,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '\$' + foodPrice.toStringAsFixed(2),
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ]),
            ],
          )),
          IconButton(
            icon: Icon(Icons.add, color: Colors.black),
            onPressed: null,
          )
        ],
      ),
    );
  }
}
