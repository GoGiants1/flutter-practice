import 'package:flutter/material.dart';

// void main() {
//   // Instanciationg MyApp()
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // properties

  // methods
  @override
  Widget build(BuildContext context) {
    var questions = [
      "What\'s your favorite color?",
      'What\'s your favorite animal',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        // 어떻게 body에 1개 이상의 위젯을 넘길까? => Use container Widget
        // Column: vertical direction container
        body: Column(children: [
          Text('The Question!'),
          // Deprecated but stick to it in this Project
          RaisedButton(
            child: Text("Answer 1"),
            onPressed: null,
          ),
          RaisedButton(
            child: Text("Answer 2"),
            onPressed: null,
          ),
          RaisedButton(
            child: Text("Answer 3"),
            onPressed: null,
          ),
          // alt of RaiseBtn
          ElevatedButton(
            onPressed: null,
            child: Text("Elv Btn"),
          )
        ]),
      ),
    );
  }
}
