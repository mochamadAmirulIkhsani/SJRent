import 'package:flutter/material.dart';

class gridView extends StatelessWidget {
  const gridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Container> myList = List.generate(90, (index) {
      return Container(
        height: 50,
        width: 150,
        color: Colors.blueAccent,
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        child: Center(
          child: Text(
            'Item $index',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    });

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Favorite Order',
            style: TextStyle(fontSize: 20, fontFamily: 'Montserrat' ,fontWeight: FontWeight.bold, color: Colors.teal.shade900),
          ),
          SizedBox(height: 10),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: myList,
          ),
        ],
      ),
    );
  }
}
