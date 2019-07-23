import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: calculate(),
    );
  }
}

class calculate extends StatelessWidget {
int x = 0;
int y = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text('Calculator', style: TextStyle(fontSize: 55, color: Colors.red),),
          TextField(
            decoration: InputDecoration(labelText: '1 Number', prefixIcon: Icon(Icons.add_circle)),
          onChanged: (String n){
              x = int.parse(n);
            },
            ),
          TextField(
            decoration: InputDecoration(labelText: '2 Nubmer', prefixIcon: Icon(Icons.add_circle)),
          onChanged: (String n){
            y = int.parse(n);
          },
          ),
          FlatButton(child: Text('multiply', style: TextStyle(fontSize: 26),), onPressed: () {
            Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context) => Resultats(y: y, x: x,)));
          },),
            FlatButton(child: Text('addition', style: TextStyle(fontSize: 26),), onPressed: () {
            Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context) => Resultats(y: y, x: x,)));
          },)
        ],
        ),
      )
    );
  }
}

class Resultats extends StatelessWidget {
final int x;
final int y;
  const Resultats({Key key, this.x, this.y}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: <Widget>[
      Text('$x + $y = ${x+y}', style: TextStyle(fontSize: 26))
      ],)
    );
  }
}