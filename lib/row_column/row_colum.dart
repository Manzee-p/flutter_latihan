import 'package:flutter/material.dart';
import 'package:belajar_flutter/main_layouts.dart';

class LatihanRowColumn extends StatelessWidget {
  const LatihanRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayouts(
        title: 'Latihan Row Column',
        body: Center(
            child: Container(
                height: 80,
                width: double.infinity,
                color: Colors.blueGrey,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [Icon(Icons.call), Text('Call')],
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [Icon(Icons.route), Text('Route')],
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [Icon(Icons.share), Text('Share')],
                        ),
                    ],
                )
            ),
        ),
    );
  }
}