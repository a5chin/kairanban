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

    List<String> list = [
      '第2回自治体給付金申請方法について',
      'コロナワクチン予約可能な病院一覧',
      'ゴミ分別方法の変更についてのご連絡',
      '自治体総決算会議の出欠確認'
    ];

    List _pages = [
      Topic1Page(),
      Topic2Page(),
      Topic3Page(),
      Topic4Page(),
    ];

    return Scaffold(
        body: ListView(
          children: <Widget>[
            for(var i = 0; i < list.length; i++)

            Card(
              child: ListTile(
              title: Text(list[i]),
              onTap: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => _pages[i]
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