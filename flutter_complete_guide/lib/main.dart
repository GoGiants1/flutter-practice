import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';
import 'quiz.dart';
import 'result.dart';

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
  final _questions = const [
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
  var _questionIndex = 0;

  // methods
  void _answerQuestion() {
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex += 1;
      });
      print('We have more questions!');
    } else {
      print('No more questions!');
      // setState(() {
      //   _questionIndex = 0;
      // });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        // 어떻게 body에 1개 이상의 위젯을 넘길까? => Use container Widget
        // Column: vertical direction container
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(),
      ),
    );
  }
}
