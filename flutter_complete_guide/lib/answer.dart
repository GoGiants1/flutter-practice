import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({Key key}) : super(key: key);
  // final: runtime constant !
  // const: complie time constant.
  final String txt;
  final Function selectHandler;
  Answer(this.txt, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text('${txt}'),
        onPressed: () => this.selectHandler(),
      ),
    );
  }
}
