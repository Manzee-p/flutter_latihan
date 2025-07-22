import 'package:flutter/material.dart';
import 'package:belajar_flutter/main_layouts.dart';

class ColumSatu extends StatelessWidget {
  const ColumSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayouts(
      title: 'Column Satu',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Text Widget 1'),
          Text('Text Widget 2'),
          Text('Text Widget 3'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Row Widget 1'),
              Text('Row Widget 2'),
              Text('Row Widget 3'),
            ],
          )
        ],
      ),
    );
  }
}