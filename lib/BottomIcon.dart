import 'package:flutter/material.dart';
class BottomIcon extends StatelessWidget {
  BottomIcon({@required this.icon ,@required this.screenWidth});
  final IconData icon;
  final double screenWidth ;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 1, color: Colors.grey),
      ),
      child: IconButton(
          padding: EdgeInsets.all(screenWidth * 0.01),
          icon: Icon(icon, color: Colors.black),
          onPressed: null),
    );
  }
}