import 'package:flutter/material.dart';
import 'searchbar.dart';
import 'dashboard.dart';
import 'footer.dart';
import 'gridView.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'SJRent Motor',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
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
                  Dashboard(),
                  gridView(),
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
