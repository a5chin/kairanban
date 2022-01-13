import 'package:flutter/material.dart';
import 'package:kairanban/page/citizens.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Card(
          child: ListTile(
            title: Text('市民の情報はこちらから'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Citizens()),
              );
            },
          ),
        ));
  }
}
