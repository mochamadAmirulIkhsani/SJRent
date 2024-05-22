import 'package:flutter/material.dart';

class searchbar extends StatelessWidget {
  const searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        width: 400,
        height: 50,
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0.0),
            hintText: 'Cari Nama Motor',
            prefixIcon: const Icon(Icons.search),

            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.teal.shade900, width: 9, strokeAlign: 9),
              borderRadius: BorderRadius.circular(100.0),
            ),
          ),
        ),
      ),
    );
  }
}
