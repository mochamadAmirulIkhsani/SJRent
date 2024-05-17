import 'package:flutter/material.dart';

class searchbar extends StatelessWidget {
  const searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 60,
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0.0),
            hintText: 'Cari Nama Motor',
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.teal),
              borderRadius: BorderRadius.circular(100.0),
            ),
          ),
        ),
      ),
    );
  }
}
