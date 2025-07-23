import 'package:flutter/material.dart';
import 'package:belajar_flutter/main_layouts.dart';

class ListViewSatu extends StatelessWidget {
  const ListViewSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayouts(
      title: 'List View Basic',
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Colors.amber[100],
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.all(10),
            child: FlutterLogo(),
          ),
          Container(
            color: Colors.amber[200],
            width: double.infinity,
            height: 200,
            margin: EdgeInsets.all(10),
            child: FlutterLogo(),
          ),
          Container(
            color: Colors.amber[300],
            width: double.infinity,
            height: 200,
            margin: EdgeInsets.all(10),
            child: FlutterLogo(),
          ),
          Container(
            color: Colors.amber[400],
            width: double.infinity,
            height: 200,
            margin: EdgeInsets.all(10),
            child: FlutterLogo(),
          ),
          Container(
            color: Colors.amber[500],
            width: double.infinity,
            height: 200,
            margin: EdgeInsets.all(10),
            child: FlutterLogo(),
          ),
        ],
      ),
    );
  }
}