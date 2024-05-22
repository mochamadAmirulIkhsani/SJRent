import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Container(
        height: 137,
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(), // Mengambil sisa ruang
            ),
            Container(
              height: 59,
              decoration: BoxDecoration(
                color: Colors.teal.shade700,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Jumlah Motor',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Montserrat'),
                  ),
                  Text(
                    'Tersedia',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Montserrat'),
                  ),
                  Text(
                    'Booking',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Montserrat'),
                  ),
                  Text(
                    'Sewa',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Montserrat'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
