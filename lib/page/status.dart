import 'package:flutter/material.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Test App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Title'),
//         ),
//         body: Center(
//           child: StateCheck(),
//         ),
//       ),
//     );
//   }
// }

// class StateCheck extends StatefulWidget {
//   @override
//   StatusChecker createState() => StatusChecker();
// }

class StatusChecker extends StatelessWidget {
  String _name;

  StatusChecker(this._name);

  String _status = '未選択';

  // void _selectStatus(String status) => setState(() { _status = status; } );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('生存確認'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: <Widget>[
              Center(
                child: Text(
                  _name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: <Widget>[
                  Radio(
                    activeColor: Colors.blueAccent,
                    value: '安全',
                    groupValue: _status,
                    // onChanged: _selectStatus,
                    onChanged: (value){},
                  ),
                  Text('安全'),
                ],
              ),
              Row(
                children: <Widget>[
                  Radio(
                    activeColor: Colors.blueAccent,
                    value: '未確認',
                    groupValue: _status,
                    // onChanged: _selectStatus,
                    onChanged: (value){},
                  ),
                  Text('未確認'),
                ],
              ),
              Row(
                children: <Widget>[
                  Radio(
                    activeColor: Colors.blueAccent,
                    value: '危険',
                    groupValue: _status,
                    // onChanged: _selectStatus,
                    onChanged: (value){},
                  ),
                  Text('危険'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

