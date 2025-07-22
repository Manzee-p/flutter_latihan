import 'package:flutter/material.dart';
import 'package:belajar_flutter/main_layouts.dart';

class LatihanRow extends StatelessWidget {
  const LatihanRow({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayouts(
      title: 'Info MPL ID',
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFFF0F0F0),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Info MPL ID',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey[700],
                  letterSpacing: 1,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 6),

              const Text(
                'Dokumentasi\nMPL ID',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  letterSpacing: 1.2,
                  height: 1.3,
                  shadows: [
                    Shadow(
                      color: Colors.black12,
                      offset: Offset(2, 2),
                      blurRadius: 6,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Gambar besar 1
              Container(
                height: 200,
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.white, width: 2),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://i.postimg.cc/ydhWF5Kv/gambar-1.webp'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // Gambar 2 dan 3 sejajar
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 160,
                      margin: const EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.white, width: 2),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ],
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://i.postimg.cc/28y8631H/gambar-2.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 160,
                      margin: const EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.white, width: 2),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ],
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://i.postimg.cc/fLMMhb4f/gambar-3.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // Gambar 4, 5, 6 sejajar
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 160,
                      margin: const EdgeInsets.only(right: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.white, width: 2),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ],
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://i.postimg.cc/vTcFQg0f/gambar-5.webp'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 160,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.white, width: 2),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ],
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://i.postimg.cc/kXFgvJg4/gambar-6.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 160,
                      margin: const EdgeInsets.only(left: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.white, width: 2),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ],
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://i.postimg.cc/3Nm0pwMn/gambar-7.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
