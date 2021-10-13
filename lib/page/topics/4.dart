import 'package:flutter/material.dart';

class Topic4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('自治体総決算会議の出欠確認'),
        ),
        body: Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        child: Image.asset('assets/images/dummy.jpg'),
                      )
                  )
              ),
            ]
        )
    );
  }
}