import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter by Ratul'),
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),
      body: Row(
        children: [
          Expanded(
            flex: 4,
              child: Image.asset('assets/hmm.jpg')
          ),
          Expanded(
            flex: 10,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.red,
              child: Text('one'),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.green,
              padding: EdgeInsets.all(30.0),
              child: Text('two'),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.amber,
              padding: EdgeInsets.all(30.0),
              child: Text('three'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('guta dis na sagol');
        },
        child: Text('hehe'),
      ),
      );
  }
}