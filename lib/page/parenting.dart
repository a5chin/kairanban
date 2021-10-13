import 'package:flutter/material.dart';
import 'package:kairanban/page/home/sample.dart';

class ParentingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SamplePage()),
              );
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              child: Hero(
                tag: 'imageHero',
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  child: Card(
                    elevation: 30,
                    color: Colors.purpleAccent,
                    margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
                    child: Center(
                      child: ListTile(
                        title: Text(
                          '乳幼児',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white
                          ),
                          textAlign: TextAlign.center,
                        ),
                        leading: Icon(
                          Icons.baby_changing_station,
                          color: Colors.white,
                          size: 60,
                        )
                      ),
                    )
                  ),
                )
              ),
            ),
          ),
        ]
      )
    );
  }
}