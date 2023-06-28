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
        child: FilledButton(
          onPressed: () {
            print('button e guta disos kn');
          },
          child: Text('button'),
        ),
      ),
    );
  }
}
