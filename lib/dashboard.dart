import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
      child: Stack(
        children: [
          Container(
            height: 137,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.teal.shade800, Colors.teal.shade700],
              ),
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
                    color: Colors.teal.shade900,
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
          const Positioned(
            top: 20, // Atur posisi teks di atas padding
            left: 15,
            child: Text(
              'Dashboard Rental',
              style: TextStyle(color: Colors.white, fontFamily: 'Montserrat', fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
