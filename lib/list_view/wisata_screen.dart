import 'package:flutter/material.dart';
import 'package:belajar_flutter/list_view/detail_wisata.dart';

class WisataScreen extends StatelessWidget {
  WisataScreen({super.key});


  final List<Map<String, dynamic>> wisataData = [
    {
      'name': 'alam 1',
      'kota' : 'Bali',
      'image': 'images/alam_1.jpeg',
      'description': 'Pantai Kuta adalah pantai terkenal di Bali.'
    },
    {
      'name': 'Gunung Bromo',
      'kota' : 'Jawa Timur',
      'image': 'images/alam_2.jpeg',
      'description': 'Gunung Bromo adalah gunung berapi aktif di Jawa Timur.'
    },
    {
      'name': 'Candi Borobudur',
      'kota' : 'Jawa Tengah',
      'image': 'images/alam_3.jpeg',
      'description': 'Candi Borobudur adalah candi Buddha terbesar di dunia.'
    },
    {
      'name': 'Danau Toba',
      'kota' : 'Sumatera Utara',
      'image': 'images/alam_4.jpeg',
      'description': 'Danau Toba adalah danau vulkanik terbesar di dunia.'
    },
    {
      'name': 'Pulau Komodo',
      'kota' : 'Nusa Tenggara Timur',
      'image': 'images/alam_5.jpeg',
      'description': 'Pulau Komodo adalah rumah bagi komodo, kadal terbesar di dunia.'
    },
  ];
//STAY YOUNG BLACK AND UNIQUE (SYBAU/)
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.green],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView.builder(
          itemCount: wisataData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: 
                      (context) => DetailWisataScreen(
                        name: wisataData[index]['name']!,
                        kota: wisataData[index]['kota']!,
                        image: wisataData[index]['image']!,
                        description: wisataData[index]['description'],
                    ),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: 200,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(wisataData[index]['image']!),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    '${wisataData[index]['name']} - ${wisataData[index]['kota']}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,

                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}