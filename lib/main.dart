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
      body: Center(
        child: Text('Hello there this is body',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'IndieFlower',
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Colors.amber[400],
          ),
        ),
      ),
    );
  }
}
