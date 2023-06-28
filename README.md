
# Flutter app dev demo

This covers some example code for Flutter framework by google using dart programming language.

```
ok

```



![Unga bunga](https://raw.githubusercontent.com/Onnesok/img_dump/main/hmm.jpg)


## Code topics

- Flutter structure
- Scaffold and app bar widgets
- Colors and Text/add fonts
- Stateless widgets and hot reload
- Image assets from network and assets
- Buttons and icons
- containers and padding
- Rows
- Colums
- Flutter outline and shortcuts
- Expandded widgets

# Flutter architecture

![architecture](https://applover.com/wp-content/uploads/2022/10/Grafika-2_-Flutter-architecture-%E2%80%93-best-practices-for-your-mobile-projects.png)

![architecture](https://static.javatpoint.com/tutorial/flutter/images/flutter-architecture.png)

## Scaffold and app bar

Root files of an app

```
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter by ratul'),
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),  //AppBar  <--
      body: Center(
          child:Text('hello flutter'),
      ), //Center  <--
    ),   // Scaffold  <--
  ));  // MaterialApp  <--
}

```
## Text colors and styling
Inside text widgets I've done some styling

```
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter by ratul'),
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),
      body: Center(
        child: Text('Hello there this is body',
        style: TextStyle(
            fontSize: 20,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
          color: Colors.amber[400],
        ),
        ),
      ),
    ),
  ));
}

```

# Now lets import custom fonts

For example I've used ```https://fonts.google.com/``` to download fonts

To import fonts download and make a directory in project called fonts and paste (Downloaded_fonts).ttf file.

Edit this part of pubspec.yaml file  -->


![Unga bunga](https://raw.githubusercontent.com/Onnesok/img_dump/main/yaml.png)

To uncomment``` ctrl+/ ```

To reverse back ```shift+tab ```
use ```shift+tab``` two times & then tab one time to allign properly

``` fontFamily: 'IndieFlower', ```

pubspec.yaml changed code -->
```  fonts:
   - family: IndieFlower
     fonts:
       - asset: fonts/IndieFlower-Regular.ttf
   - family: Bruno
     fonts:
       - asset: fonts/BrunoAceSC-Regular.ttf
       
```


![Widgets](https://img-9gag-fun.9cache.com/photo/arox7VX_460s.jpg)



## Stateless widgets and hot reload

Tired of reloading again and again. So do Stateless widgets

[See this to get it.](https://www.devopsschool.com/blog/wp-content/uploads/2020/08/flutter_widget.png)

To build the class with android studio use this shortcut ``` Stateless ``` and class will be created. Example::::

```
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

```

``` ctrl + s ``` to auto run and save

