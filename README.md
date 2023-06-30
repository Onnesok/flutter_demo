
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
- Expanded widgets

## Flutter architecture

![architecture](https://applover.com/wp-content/uploads/2022/10/Grafika-2_-Flutter-architecture-%E2%80%93-best-practices-for-your-mobile-projects.png)

![architecture](https://static.javatpoint.com/tutorial/flutter/images/flutter-architecture.png)

## Remove annoying green line from android studio sdk

Before starting lets Remove These annoying lines before every widgets.....

open ``` analysis_options.yaml``` and scroll down.

[See this for example](https://github.com/Onnesok/flutter_demo/blob/master/analysis_options.yaml)

after rules paste this code
```
 prefer_const_constructors : false

```
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

![See this to get it.](https://www.devopsschool.com/blog/wp-content/uploads/2020/08/flutter_widget.png)

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
For asset (image pubesc.yaml change code here) <--

![pubesc.yaml change code here <--](https://raw.githubusercontent.com/Onnesok/img_dump/main/assets.png)
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

we use ``` EdgeInsets.all ``` or  ``` EdgeInsets.fromTRB ``` or something like this to use margin or padding for our needs....
## Rows

For multiple widgets entry in row wise we use rows widget.

Example:::

```
Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(30),
            color: Colors.green,
            child: Text('one'),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
            margin: EdgeInsets.all(20),
            child: Text('two'),
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(
                color: Colors.purpleAccent,
                width: 10,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 50),
            color: Colors.amber,
            margin: EdgeInsets.all(20),
            child: Text('three'),
          ),
        ],
      ),
      
```

mainAxisAlignment means align in horizontally as horizontal is the main axis for row.
Oposite for the crossAxisAlignment.

![pic](https://miro.medium.com/v2/resize:fit:976/1*PVOEl-D_pWvfEY2i1fXU-g.png)
## Colum

```
Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(30),
            color: Colors.green,
            child: Text('one'),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
            margin: EdgeInsets.all(20),
            child: Text('two'),
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(
                color: Colors.purpleAccent,
                width: 10,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 50),
            color: Colors.amber,
            margin: EdgeInsets.all(20),
            child: Text('three'),
          ),
        ],
      ),

```
## Flutter outline and shortcuts

![shortcut](https://sayingimages.com/wp-content/uploads/2021/02/bad-friend-short-cut-meme.jpg)

Hover mouse over a function and a light bulb will appear. When press the bulb life jinga dala. You can wrap, remove or replace widgets with any other widgets without writing any code again.

Next on the right side there is a menu called flutter outline. open it. it will show nothing. Then press ``` ctrl + function that I wanna see ``` and then it will show full flutter tree there.

```
Center(
        child: Padding(
          padding: EdgeInsets.all(60),  //It's mainly  mergins space
          child: Container(
            padding: EdgeInsets.all(30),   // it's paddding or inside space
            color: Colors.amber,
            child: Text('helloo theee'),
          ),
        ),
      ),

```
we can use direct padding to for padding without a container.

## Expanded widgets

For me if I forget

```
Row(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.red,
            child: Text('one'),
          ),
          Container(
            color: Colors.green,
            padding: EdgeInsets.all(50),
            margin: EdgeInsets.all(20),
            child: Text('two'),
          ),
          Container(
            color: Colors.amber,
            padding: EdgeInsets.all(70),
            child: Text('three'),
          ),
        ],
      ),

```
Expanded widgets expands duh ( :| )
```
Row(
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

```

here in ```flex: 3 ``` flex means we can set the width any container will take. 3 means here it will take 3 portion of it's width.

without flex everything will take same space.
## Simple ui design

![good job](https://raw.githubusercontent.com/Onnesok/img_dump/main/inspired-making-progress-meme.webp)

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
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Flutter by Ratul'),
        centerTitle: true,
        backgroundColor: Colors.black54,
        elevation: 0, // removes the drop shadow from appbar
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
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
                Text(
                  'ratulhasan9464@gmail.com,',
                  style: TextStyle(
                    letterSpacing: 2,
                    color: Colors.red[400],
                  ),
                )
              ],
            ),
          ],
        ),
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

```