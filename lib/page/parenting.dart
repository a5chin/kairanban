import 'package:flutter/material.dart';
import 'package:kairanban/page/home/sample.dart';


class AgeCard extends StatelessWidget {
  String title;

  AgeCard(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SamplePage()),
              );
            },
            child: ListTile(
                title: Text(
                  this.title,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black
                  ),
                  textAlign: TextAlign.center,
                ),
                leading: Icon(
                  Icons.baby_changing_station,
                  color: Colors.black,
                  size: 60,
                )
            ),
          ),
        ]
    );
  }
}


class ParentingPage extends StatelessWidget {
  List title = ['乳幼児', '小学生', '中学生', '高校生', '大学生'];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          for (var i in title)
            AgeCard(i)
        ],
      )
    );
  }
}