import 'package:flutter/material.dart';
import 'package:kairanban/components/carousel.dart';
import 'package:kairanban/page/home/sample.dart';
import 'package:kairanban/page/topics/1.dart';
import 'package:kairanban/page/topics/2.dart';
import 'package:kairanban/page/topics/3.dart';
import 'package:kairanban/page/topics/4.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                title: Text('第2回自治体給付金申請方法について'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Topic1Page()
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('コロナワクチン予約可能な病院一覧'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Topic2Page()
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('ゴミ分別方法の変更についてのご連絡'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Topic3Page()
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('自治体総決算会議の出欠確認'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Topic4Page()
                    ),
                  );
                },
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(10, 50, 10, 50),
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
                  ),
                ]
            ),
          ],
    )
    );

  }
}