import 'package:flutter/material.dart';

// void main() {
//   // Instanciationg MyApp()
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // properties

  // methods
  void answerQuestion() {
    print('Answer Chosen');
  }

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
            // 함수의 이름, 포인터를 알려줌.
            // 함수() 그냥 넘겨주는게 아니라 실행 후 리턴 값을 넘겨주는 것..
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text("Answer 2"),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text("Answer 3"),
            onPressed: () {
              print("Ans 3 Chosen");
            },
          ),
          // alt of RaiseBtn
          ElevatedButton(
            // 익명함수를 넘겨줄 수 있음.
            onPressed: () => print("Elv clicked"),
            child: Text("Elv Btn"),
          )
        ]),
      ),
    );
  }
}
