import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
            'Dashboard'
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              color: Colors.blue, // Ganti warna background sesuai keinginan
              child: Center(
                child: Text(
                    'Hello World'
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
