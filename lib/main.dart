import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: my_list(),
  ));
}

class my_list extends StatefulWidget {
  const my_list({super.key});

  @override
  State<my_list> createState() => _my_listState();
}

class _my_listState extends State<my_list> {
  
  List data = [
    'hello kudasai, always kudasai',
    'you took this seriously, huh'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("kudasai"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: data.map((e) => Text(e)).toList(),
        ),
      ),
    );
  }
}

