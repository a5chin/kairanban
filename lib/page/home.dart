import 'package:flutter/material.dart';
import 'package:kairanban/components/carousel.dart';
import 'package:kairanban/page/home/sample.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: Carousel(),
        ),
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SamplePage()),
                  );
                },
                child: Center(
                  child: Hero(
                    tag: 'imageHero',
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      child: Image.network(
                        'https://picsum.photos/500/500?random=0', width: (_width - 45) / 2,
                      ),
                    )
                  ),
                ),
              ),
            ),
          ]
        ),
      ]
    );
  }
}