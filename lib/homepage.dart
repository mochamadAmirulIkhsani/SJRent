import 'package:flutter/material.dart';
import 'searchbar.dart';
import 'dashboard.dart';
import 'footer.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SJRent Motor',
          style: TextStyle(
            fontSize: 35,
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
                  SizedBox(height: 10.0),
                  Dashboard(),
                ],
              ),
            ),
          ),
          BottomNavigationBarWidget(),
        ],
      ),
    );
  }
}
