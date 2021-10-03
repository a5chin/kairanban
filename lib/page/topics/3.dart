import 'package:flutter/material.dart';

class Topic3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ゴミ分別方法の変更についてのご連絡'),
        ),
        body: Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Hero(
                      tag: 'imageHero',
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        child: Image.network(
                          'https://picsum.photos/500/500?random=0',
                        ),
                      )
                  )
              ),
            ]
        )
    );
  }
}