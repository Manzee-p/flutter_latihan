import 'package:flutter/material.dart';
import 'package:belajar_flutter/main_layouts.dart';

class RowSatu extends StatelessWidget {
  const RowSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayouts(
      title: 'Row',
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('widget Text 1'),
          Text('widget Text 2'),
          Text('widget Text 3'),
        ],
      ),
    );
  }
}