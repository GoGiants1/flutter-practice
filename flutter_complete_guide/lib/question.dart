import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // 내부에서 바뀌는 경우 리렌더링이 안되지만, 이 경우 외부에서 값이 바뀌기 때문에 리렌더링 가능
  // final -> immutable
  final String questionText;

  // Constructor
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
