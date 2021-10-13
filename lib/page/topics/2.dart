import 'package:flutter/material.dart';

class Topic2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('コロナワクチン予約可能な病院一覧'),
        ),
        body: ListView(
          children: <Widget>[
            Text('期限: 2021年12月24日18:00'),
            Text('申請方法: 添付資料に記載'),
            Text('内容: 各世帯主に一律10万円の給付'),
            Text('備考: '),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      child: Image.asset('assets/images/dummy.jpg'),
                    )
                )
            ),
          ],

        )
    );
  }
}