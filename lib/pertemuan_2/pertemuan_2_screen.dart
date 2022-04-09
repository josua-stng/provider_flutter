import 'package:flutter/material.dart';
import 'package:flutter_application_1/pertemuan_2/pertemuan_2_detail_screnn.dart';

class Pertemuan02Screen extends StatelessWidget {
  const Pertemuan02Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pertemuan 02')),
      body: Column(
        children: [
          // Atas
          Text('Ke Halaman Detail'),

          // Bawah
          ElevatedButton(
              onPressed: () {
                // Klik
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Pertemuan2DetailScrenn()));
              },
              child: Text('Klik Saya'))
        ],
      ),
    );
  }
}
