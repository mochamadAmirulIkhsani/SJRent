import 'package:flutter/material.dart';
import 'package:rental_motor_sjrent/homepage.dart';
import 'package:rental_motor_sjrent/kelolamotor.dart';
import 'package:rental_motor_sjrent/listall.dart';
import 'package:rental_motor_sjrent/schedule.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.teal),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted_sharp, color: Colors.teal),
            label: 'Pencarian',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined, color: Colors.teal),
            label: 'Tanggal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined, color: Colors.teal),
            label: 'Tambah',
          ),
        ],
        
        onTap: (value) => {
          if (value == 0) Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Homepage(),)),
          if (value == 1) Navigator.of(context).push(MaterialPageRoute(builder: (context) => const listAll(),)),
          if (value == 2) Navigator.of(context).push(MaterialPageRoute(builder: (context) => const schedule(),)),
          if (value == 3) Navigator.of(context).push(MaterialPageRoute(builder: (context) => const kelolaMotor(),))
        },
      ),
    );
  }
}
