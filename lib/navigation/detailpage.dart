import 'package:flutter/material.dart';
import 'package:navigation_routing_parsing/navigation/homepage.dart';

class DetaiOrderPage extends StatelessWidget {
  final String makanan;
  final String jumlahMakanan;
  final String minunan;
  final String jumlahMinuman;
  final int totalHarga;
  const DetaiOrderPage({
    super.key,
    required this.makanan,
    required this.jumlahMakanan,
    required this.minunan,
    required this.jumlahMinuman,
    required this.totalHarga,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Order Page')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Food Order : $makanan'),
            Text('Food QTY Order : $jumlahMakanan'),
            Text('Drink Order : $minunan'),
            Text('Drink QTY Order : $jumlahMinuman'),
            Text('Total Price : $totalHarga'),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Homepage()),
                  (route) => false,
                );
              },
              child: Text('Finish Order')
            ),
          ],
        ),
      ),
    );
  }
}
