import 'package:flutter/material.dart';

import 'button.dart';
import 'customText.dart';

class TextControl extends StatefulWidget {
  const TextControl({Key? key}) : super(key: key);

  @override
  _TextControlState createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
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
    return Column(
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
    );
  }
}
