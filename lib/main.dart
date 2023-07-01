import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Flutter by Ratul'),
        centerTitle: true,
        backgroundColor: Colors.black54,
        elevation: 0, // removes the drop shadow from appbar
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/hmm.jpg'),
                radius: 40,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Ratul Hasan',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.amberAccent,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Company Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Onnesok",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.amberAccent,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  'Email Developer :',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.mail,
                    color: Colors.red,
                  ),
                  label: Text(
                    'Email me',
                    style: TextStyle(
                      color: Colors.black87,
                      letterSpacing: 2,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amberAccent,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Text(
                  'Mail Address:',
                  style: TextStyle(
                    letterSpacing: 2,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Text(
                    'ratulhasan9464@gmail.com',
                    style: TextStyle(
                      letterSpacing: 2,
                      color: Colors.red[400],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),
            Center(
              child: Expanded(
                child: Text(
                  '$count',
                  style: TextStyle(
                    letterSpacing: 2,
                    color: Colors.green[400],
                    fontSize: 50,
                    fontFamily: 'IndieFlower',
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count+=1;
          });
        },
        child: Icon(
          Icons.add,
          color: Colors.black87,
        ),
      ),
    );
  }
}
