import 'package:flutter/material.dart';

class Topic3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ゴミ分別方法の変更についてのご連絡'),
        ),
        body: ListView(
          children: <Widget>[
            Text('期限: 2021年12月24日18:00'),
            Text('申請方法: 添付資料に記載'),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      child: Image.asset('assets/images/dummy.jpg'),
                    )
                )
            ),
            Text('内容: 各世帯主に一律10万円の給付'),
            Text('備考: '),
          ],

        )
    );
  }
}