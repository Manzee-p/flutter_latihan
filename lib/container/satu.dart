import 'package:flutter/material.dart';
import 'package:belajar_flutter/main_layouts.dart';

class ContainerSatu extends StatelessWidget {
  const ContainerSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayouts(
      title: 'Container Satu',
      body: Container(
        width: 200,
        height: 200,
        margin: EdgeInsets.all(10),
        color: Colors.blueAccent,
        child: Center(
          child: Text('Hello Flutter'),
        ),
      ),
    );
  }
}