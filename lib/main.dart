import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.deepOrange,
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  int count = 0;
  String str = '';
  String _value = 'Hello World';
  int val = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Button Widget'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('Counter :$count'),
              new RaisedButton(
                onPressed: onCounter,
                child: new Text('Counter Button'),
              ),
              new Text('Text :$str'),
              new RaisedButton(
                onPressed: () => changeString('Muhammad Ali Ghaffar'),
                child: new Text('Change String Button'),
              ),
              new Text(this._value),
              new FlatButton(onPressed: onPressed,child: new Text('Click me'),),
              new Text('Value :${this.val}'),
              new IconButton(onPressed: addition, icon: new Icon(Icons.add)),
              new IconButton(onPressed: subtract, icon: new Icon(Icons.remove))
            ],
          ),
        ),
      ),
    );
  }

  void onCounter() {
    setState(() {
      count++;
    });
  }

  void changeString(String str) {
    setState(() {
      this.str = str;
    });
  }

  void onPressed(){
    setState(() {
      this._value= new DateTime.now().toString();
    });
  }

  void addition(){
    setState(() {
      this.val++;
    });
  }

  void subtract(){
    setState(() {
      this.val--;
    });
  }
}
