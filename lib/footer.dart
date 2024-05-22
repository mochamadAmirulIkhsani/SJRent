import 'package:flutter/material.dart';
import 'package:rental_motor_sjrent/homepage.dart';
import 'package:rental_motor_sjrent/kelolamotor.dart';
import 'package:rental_motor_sjrent/listall.dart';
import 'package:rental_motor_sjrent/schedule.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavBar> {
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
        onTap: (value) {
          Widget destinationPage;
          if (value == 0) {
            destinationPage = const Homepage();
          } else if (value == 1) {
            destinationPage = const listAll();
          } else if (value == 2) {
            destinationPage = const schedule();
          } else if (value == 3) {
            destinationPage = const kelolaMotor();
          } else {
            return;
          }

          Navigator.of(context).pushReplacement(
            PageRouteBuilder(
              pageBuilder: (context, animation1, animation2) => destinationPage,
              transitionDuration: Duration.zero,
              reverseTransitionDuration: Duration.zero,
            ),
          );
        },
      ),
    );
  }
}
