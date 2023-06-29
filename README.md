
# Flutter app dev demo

This covers some example code for Flutter framework by google using dart programming language.





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

## Image assets from network and assets
For network image
```
Image(
    image: NetworkImage('https://img-9gag-fun.9cache.com/photo/arox7VX_460s.jpg'),
        ),

```
For asset image

[pubesc.yaml change code here <--](https://raw.githubusercontent.com/Onnesok/img_dump/main/assets.png)
```
Image(
    image: AssetImage('assets/hmm.jpg'),
    ),
```

shortcut

```
Image.asset('assets/hmm.jpg'),

```

## Buttons and icons

![Widgets](https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/10641ad9-aa07-4344-9124-1ed8cb0e5703/dablx6i-b9e9114e-60bb-4535-b05e-7425d60e10b6.jpg/v1/fill/w_600,h_222,q_75,strp/don_t_push_the_red_button__meme_by_richardchibbard_dablx6i-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjIyIiwicGF0aCI6IlwvZlwvMTA2NDFhZDktYWEwNy00MzQ0LTkxMjQtMWVkOGNiMGU1NzAzXC9kYWJseDZpLWI5ZTkxMTRlLTYwYmItNDUzNS1iMDVlLTc0MjVkNjBlMTBiNi5qcGciLCJ3aWR0aCI6Ijw9NjAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.GIuS49NkCEBNyjXYrXySP3WgXHqipt3nJJ4R88fSuEg)

so now lets create some buttons to press hudai for no reason.... less gooo...
Here's some examples of button codes.....

OutlinedButton

```
OutlinedButton(
onPressed: (){},
child: Text('outlined button', style: TextStyle(
letterSpacing: 2,
fontWeight: FontWeight.bold,
fontSize: 30,
),),
),

```
FilledButton
```
FilledButton(
onPressed: () {
print('guta kn dili');
},
child: Text('filled button'),
),
```
ElevatedButton
```
ElevatedButton(
onPressed: () {
print('guta kn dili');
},
child: Text('Elevated button'),
),
```
MaterialButton
```
MaterialButton(
onPressed: () {},
child: Text('ok'),
),
```
FloatingActionButton
```
FloatingActionButton(
onPressed: () {},
child: Text('f'),
),

```
IconButton
```
IconButton(
onPressed: () {},
icon: Icon(
Icons.mail,
),
color: Colors.amber,
iconSize: 40,
),

```
ElevatedButton with icon
```
ElevatedButton.icon(
onPressed: () {
print('guta kn dili ');
},
icon: Icon(Icons.mail, color: Colors.red[400],),
label: Text('mail me',
style: TextStyle(
color: Colors.green,
fontFamily: 'Bruno',
fontSize: 15,
),
),
style: ElevatedButton.styleFrom(
backgroundColor: Colors.amber,
),
),
```

## containers and padding

![Widgets](https://miro.medium.com/v2/resize:fit:1200/1*STd9u5TPBJx1PtIr5C2ASA.jpeg)

we can add padding, margins and unga bunga for containers

Example::

```
Container(padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(20),
          color: Colors.blueAccent,
          child: Text('container'),
        ),
```
padding is the birer part

margin is the vitorer part

we use ``` EdgeInsets.all ```or ``` EdgeInsets.fromTRB ``` or something like this to use margin or padding for our needs....
## Rows

For multiple widgets entry in row wise we use rows widget.

Example:::

```

```