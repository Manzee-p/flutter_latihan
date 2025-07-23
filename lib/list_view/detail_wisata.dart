import 'package:belajar_flutter/main_layouts.dart';
import 'package:flutter/material.dart';
  
  class DetailWisataScreen extends StatelessWidget {
    final String name;
    final String kota;
    final String image;
    final String description;

  DetailWisataScreen({
    required this.name,
    required this.kota,
    required this.image,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return MainLayouts(
      title: 'Detail Tempat Wisata',
      body: Container(
        child: Container(
          color: Colors.pink,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Center(child: Text("$name - $kota")),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.bottomLeft,
                height: 200,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(height: 200, child: Text(description)),
            ],
          ),
        ),
      ),
    );
  }
}