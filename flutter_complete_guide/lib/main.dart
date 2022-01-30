import 'package:flutter/material.dart';

import './question.dart';

// void main() {
//   // Instanciationg MyApp()
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

// underscore => public to private
class _MyAppState extends State<MyApp> {
  // properties
  var _questionIndex = 0;

  // methods
  void _answerQuestion(int number) {
    setState(() {
      _questionIndex = number;
    });
    print('Answer ${number} Chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What\'s your favorite color?",
      'What\'s your favorite animal?',
      'What\'s your favorite movie?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        // 어떻게 body에 1개 이상의 위젯을 넘길까? => Use container Widget
        // Column: vertical direction container
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            // Deprecated but stick to it in this Project
            RaisedButton(
              child: Text("Answer 1"),
              // 함수의 이름, 포인터를 알려줌.
              // 함수() 그냥 넘겨주는게 아니라 실행 후 리턴 값을 넘겨주는 것..
              onPressed: () => _answerQuestion(0),
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () => _answerQuestion(1),
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: () {
                _answerQuestion(2);
              },
            ),
            // alt of RaiseBtn
            ElevatedButton(
              // 익명함수를 넘겨줄 수 있음.
              onPressed: () => print("Elv clicked"),
              child: Text("Elv Btn"),
            )
          ],
        ),
      ),
    );
  }
}
