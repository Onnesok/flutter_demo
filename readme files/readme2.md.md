
# Flutter demo second part

congratulations you made this far.

![congrats](https://i.imgflip.com/1glr40.jpg)

## Next lessons

- List
- custom class (list class for example)
- Cards


## list
Now look at this code first and analyze....
```
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


```

here ```   List data = [
'hello kudasai, always kudasai',
'you took this seriously, huh'
]; ``` is the list and List means I'm creating a list and data is the name of the variable.

Next, map() function takes list and iterates through the list and returns a list which we specified in the end like ```toList()```
```map((parameter) => return parameter)```



## custom list class