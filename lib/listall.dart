import 'package:flutter/material.dart';
import 'footer.dart';
import 'searchbar.dart';


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

    // Gabungkan kedua list
    final List<Map<String, String>> combinedList = [...myList, ...motorImages];

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: combinedList.map((motor) {
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
      ),
    );
  }
}

class listAll extends StatefulWidget {
  const listAll({super.key});

  @override
  State<listAll> createState() => _listAllState();
}

class _listAllState extends State<listAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Pencarian",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.teal,
            fontFamily: 'Montserrat',
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  searchbar(),
                  SizedBox(height: 2.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Tindakan untuk tombol All
                          },
                          child: Text('All'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Tindakan untuk tombol Tersedia
                          },
                          child: Text('Tersedia'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Tindakan untuk tombol Booking
                          },
                          child: Text('Booking'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Tindakan untuk tombol Sewa
                          },
                          child: Text('Sewa'),
                        ),
                      ],
                    ),
                  ),
                  gridView(), // Tambahkan gridView di sini
                ],
              ),
            ),
          ),
          BottomNavBar(),
        ],
      ),
    );
  }
}
