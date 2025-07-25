import 'package:flutter/material.dart';

class OutputFormScreen extends StatelessWidget {
  final String nama, jk, tglLahir, agama;
  OutputFormScreen(
    {Key? key,
    required this.nama,
    required this.jk,
    required this.tglLahir,
    required this.agama})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('nama : $nama'),
          Text('jenis kelamin : $jk'),
          Text('tanggal lahir : $tglLahir'),
          Text('agama : $agama'),
        ],
      ),
    );
  }
}