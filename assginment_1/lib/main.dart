import 'package:flutter/material.dart';

import 'button.dart';
import 'customText.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  static const _txts = [
    {'txt': 'Hello'},
    {'txt': 'World'},
    {'txt': 'Apple'},
    {'txt': 'Tesla'},
    {'txt': 'BitCoin'},
    {'txt': 'Etherium'},
    {'txt': 'Ada'},
    {'txt': 'iPhone'},
    {'txt': 'Samsung'},
  ];

  void _selectionHandler(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('First Assignment'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(_txts[_selectedIndex]['txt'] as String),
            ...(_txts).map((txt) {
              return CustomButton(
                txt['txt'] as String,
                () => _selectionHandler(_txts.indexOf(txt)),
              );
            })
          ],
        ),
      ),
    );
  }
}
