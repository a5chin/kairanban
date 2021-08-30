import 'package:flutter/material.dart';
import 'package:kairanban/components/carousel.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: Carousel(),
        ),
      ]
    );
  }
}