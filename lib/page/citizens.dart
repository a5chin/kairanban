import 'package:flutter/material.dart';
import 'package:kairanban/page/status.dart';

class Citizens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const List<String> _names = ['内河友哉', '内河ひなの'];

    return Scaffold(
      appBar: AppBar(
        title: Text('Citizens Info'),
      ),
      body: Center(
        child: Container(
            child: ListView(children: <Widget>[
          for (var i = 0; i < _names.length; i++)
            Card(
              child: ListTile(
                title: Text(_names[i]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => StatusChecker(_names[i])),
                  );
                },
              ),
            ),
        ])),
      ),
    );
  }
}
