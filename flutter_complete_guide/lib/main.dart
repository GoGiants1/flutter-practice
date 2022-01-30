import 'package:flutter/material.dart';

import './question.dart';
import 'answer.dart';

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
  void _answerQuestion() {
    if (_questionIndex < 2) {
      setState(() {
        _questionIndex += 1;
      });
    } else {
      setState(() {
        _questionIndex = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      // map
      {
        'questionText': "What\'s your favorite color?",
        'answers': [
          'Black',
          'Red',
          'Green',
          'White',
        ],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          'Rabbit',
          'Elephant',
          'Snake',
          'Lion',
        ],
      },
      {
        'questionText': 'What\'s your favorite movie?',
        'answers': [
          'Parasite',
          'SpiderMan',
          '1917',
          'Iron Man',
        ],
      },
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
              questions[_questionIndex]['questionText'],
            ),
            // Deprecated but stick to it in this Project
            ...(questions[_questionIndex]['answers'] as List<String>).map((a) {
              return Answer(a, _answerQuestion);
            }).toList()
          ],
        ),
      ),
    );
  }
}
