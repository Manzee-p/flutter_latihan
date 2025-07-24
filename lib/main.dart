import 'package:belajar_flutter/belajar_form/form_output_screen.dart';
import 'package:belajar_flutter/container/dua.dart';
import 'package:belajar_flutter/container/satu.dart';
import 'package:belajar_flutter/container/tiga.dart';
import 'package:belajar_flutter/list_view/contoh_dua.dart';
import 'package:belajar_flutter/list_view/contoh_empat.dart';
import 'package:belajar_flutter/list_view/contoh_tiga.dart';
import 'package:belajar_flutter/list_view/latihan_satu.dart';
import 'package:belajar_flutter/list_view/wisata_screen.dart';
import 'package:belajar_flutter/row_column/latihan_row.dart';
import 'package:belajar_flutter/row_column/row_colum.dart';
import 'package:belajar_flutter/row_column/row_satu.dart';
import 'package:belajar_flutter/list_view/contoh_satu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BelajarFlutter());
}

class BelajarFlutter extends StatelessWidget {
  const BelajarFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarForm(),
    );
  }
}

class HelloFlutter extends StatelessWidget {
  const HelloFlutter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        title: Text('Belajar Flutter'),
      ),
      body: Center(
        child: Text('Hello Flutter', 
          style: TextStyle(
            backgroundColor: Colors.blueAccent, 
            fontSize: 24, 
            fontWeight: FontWeight. bold
          ),
        ),
      ),
    );
  }
}