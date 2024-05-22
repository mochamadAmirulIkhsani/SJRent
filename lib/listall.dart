import 'package:flutter/material.dart';
import 'footer.dart';
import 'searchbar.dart';

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
      body: const Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  searchbar(),
                  SizedBox(height: 2.0),
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
