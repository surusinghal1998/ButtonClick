import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Homeapp(),
    );
  }
}

class Homeapp extends StatefulWidget {
  const Homeapp({Key? key}) : super(key: key);

  @override
  _HomeappState createState() => _HomeappState();
}

class _HomeappState extends State<Homeapp> {
  String mydata = "hello World";

  void _changetext() {
    setState(() {
      if (mydata.startsWith("h")) {
        mydata = "Welcome in this world";
      } else {
        mydata = "hello World";
      }
    });
  }

  Widget _bodywidget() {
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          children: [
            new Text(mydata),
            new RaisedButton(
              child: new Text("Click"),
              onPressed: _changetext,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Hello Singhal Bartan Bhandar"),
        ),
        body: _bodywidget());
  }
}
