import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String txt;
  final Function selectionHandler;
  const CustomButton(this.txt, this.selectionHandler, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Text('Show $txt'),
        onPressed: () => selectionHandler(),
        style: ElevatedButton.styleFrom(
          primary: Colors.deepPurpleAccent,
        ));
  }
}
