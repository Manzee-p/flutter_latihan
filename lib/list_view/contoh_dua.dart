import 'package:belajar_flutter/main_layouts.dart';
import 'package:flutter/material.dart';

class ListViewDua extends StatelessWidget {
  const ListViewDua({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayouts(
      title: 'Contoh List Builders',
      body: ListView.builder(
        itemCount: 9,
        itemBuilder: (context, index) {
          return Container(
            width: 200,
            height: 200,
            margin: EdgeInsets.all(10),
            color: Colors.amber[(index + 1) * 100],
            child: FlutterLogo(),
          );
        },
      ),
    );
  }
}