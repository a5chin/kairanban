import 'package:flutter/material.dart';

class StatusChecker extends StatelessWidget {
  String _name;

  StatusChecker(this._name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: Text(_name),
        ),
      ),
    );
  }
}
