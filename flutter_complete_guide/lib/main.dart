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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Text("THis is my default Text!"),
      ),
    );
  }
}
