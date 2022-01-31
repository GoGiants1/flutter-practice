import 'package:flutter/material.dart';

import 'textControl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First Assignment'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: TextControl(),
      ),
    );
  }
}
