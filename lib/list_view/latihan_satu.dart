import 'package:flutter/material.dart';
import 'detail_user_page.dart';

final List<Map<String, dynamic>> userList = [
  {
    "name": "Yuji Itadori",
    "gender": "Laki-laki",
    "level": "80",
    "bio": "Vessel untuk Sukuna, kuat dan cepat.",
    "zodiac": "Taurus",
    "point": "8900",
    "image": "images/yuji.jpg"
  },
  {
    "name": "Megumi Fushiguro",
    "gender": "Laki-laki",
    "level": "85",
    "bio": "Pengguna Ten Shadows Technique.",
    "zodiac": "Scorpio",
    "point": "9100",
    "image": "images/megumi.jpeg"
  },
  {
    "name": "Nobara Kugisaki",
    "gender": "Perempuan",
    "level": "82",
    "bio": "Cursed Tool Expert dengan palu dan paku.",
    "zodiac": "Leo",
    "point": "8600",
    "image": "images/nobara.jpg"
  },
  {
    "name": "Satoru Gojo",
    "gender": "Laki-laki",
    "level": "100",
    "bio": "Penyihir terkuat dengan Six Eyes dan Limitless.",
    "zodiac": "Capricorn",
    "point": "9999",
    "image": "images/gojo.jpg"
  },
  {
    "name": "Ryoumen Sukuna",
    "gender": "Laki-laki",
    "level": "98",
    "bio": "Pengendali kutukan massal, mantan teman Gojo.",
    "zodiac": "Pisces",
    "point": "9700",
    "image": "images/sukuna.jpg"
  }
];

class ListUserPage extends StatelessWidget {
  const ListUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Daftar Karakter JJK',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2196F3), Color(0xFF0D47A1)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: ListView.builder(
            itemCount: userList.length,
            padding: const EdgeInsets.all(12),
            itemBuilder: (context, index) {
              final user = userList[index];
              return Card(
                color: Colors.white.withOpacity(0.95),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 32,
                        backgroundImage: AssetImage(user['image']),
                        backgroundColor: Colors.grey[300],
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              user['name'],
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text("Point: ${user['point']}"),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  DetailUserPage(user: user),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text(
                          "Detail",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
