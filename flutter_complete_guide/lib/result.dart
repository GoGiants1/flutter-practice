import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  var resultScore;
  final Function resetQuiz;
  Result(this.resultScore, this.resetQuiz);

  // getter => property + method

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore > 20) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore > 10) {
      resultText = 'Pretty likeable!';
    } else if (resultScore > 5) {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
