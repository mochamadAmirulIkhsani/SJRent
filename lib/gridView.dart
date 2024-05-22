import 'package:flutter/material.dart';

class gridView extends StatelessWidget {
  const gridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> myList = List.generate(2, (index) {
      return {
        'name': 'Motor $index',
        'plate': 'B 1234 XYZ',
        'price': 'Rp ${50000 * (index + 1)}',
        'type': index % 2 == 0 ? 'Matic' : 'Manual',
      };
    });

    final List<Map<String, String>> motorImages = List.generate(10, (index) {
      return {
        'name': 'Motor $index',
        'plate': 'B 5678 ABC',
        'price': 'Rp ${70000 * (index + 1)}',
        'type': index % 2 == 0 ? 'Matic' : 'Manual',
      };
    });

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Favorite Order',
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  color: Colors.teal.shade900),
            ),
            const SizedBox(height: 10),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: myList.map((motor) {
                return Column(
                  children: [
                    Container(
                      height: 120,
                      width: 199,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          motor['name']!,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Plat: ${motor['plate']}'),
                          Text('${motor['price']}'),
                          Text('${motor['type']}'),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
            SizedBox(height: 10), // add some space between GridView and ListView
            Text(
              'Motor Tersedia',
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  color: Colors.teal.shade900),
            ),
            const SizedBox(height: 10),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: motorImages.map((motor) {
                return Column(
                  children: [
                    Container(
                      height: 120,
                      width: 190,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          motor['name']!,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Plat: ${motor['plate']}'),
                          Text('${motor['price']}'),
                          Text('${motor['type']}'),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
