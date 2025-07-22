import 'package:flutter/material.dart';
import 'package:belajar_flutter/container/satu.dart';
import 'package:belajar_flutter/main_layouts.dart';

class ContainerTiga extends StatelessWidget {
  const ContainerTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayouts(
      title: 'Container Tiga',
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: const LinearGradient(
            colors: [Colors.blueAccent, Colors.blueGrey, Colors.tealAccent],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          boxShadow: const [
            BoxShadow(color: Colors.black, spreadRadius: 2),
          ],
        ),
        child: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            margin: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: const LinearGradient(
                colors: [Colors.blueAccent, Colors.redAccent, Colors.black12],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              boxShadow: const [
                BoxShadow(color: Colors.black, spreadRadius: 2),
              ],
            ),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ContainerSatu()),
                  );
                },
                child: const Text('Pindah ke Container Satu'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
