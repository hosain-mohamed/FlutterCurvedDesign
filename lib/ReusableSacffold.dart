import 'package:flutter/material.dart';
import 'Constants.dart';

class ReusableSacffold extends StatelessWidget {
  final Widget body ;
  ReusableSacffold({@required this.body});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: SafeArea(
        child: body ,
      ),
    );
  }
}
