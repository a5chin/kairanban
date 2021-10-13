import 'package:flutter/material.dart';

class Topic2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('コロナワクチン予約可能な病院一覧'),
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