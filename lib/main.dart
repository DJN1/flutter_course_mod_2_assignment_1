import "package:flutter/material.dart";

import "./text.dart";
import "./textControl.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _text = "Hello";
  var _n = 1;

  void changeText(int n) {
    print("n: $n");
    setState(() {
      _n++;
      if (_n % 3 == 0 && _n % 5 == 0) {
        _text = "FizzBuzz";
      } else if (_n % 3 == 0) {
        _text = "Fizz";
      } else if (_n % 5 == 0) {
        _text = "Buzz";
      } else {
        _text = "Not a FizzBuzz Number: " + _n.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Assigment 1"),
        ),
        body: Column(
          children: <Widget>[
            TextW(_text),
            TextControl(changeText, _n),
          ],
        ),
      ),
    );
  }
}
