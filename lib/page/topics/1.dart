import 'package:flutter/material.dart';

class Topic1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('第2回自治体給付金申請方法について'),
        ),
        body: Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Hero(
                      tag: 'imageHero',
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