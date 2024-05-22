import 'package:flutter/material.dart';
import 'footer.dart';

class kelolaMotor extends StatefulWidget {
  const kelolaMotor({super.key});

  @override
  State<kelolaMotor> createState() => _kelolaMotorState();
}

class _kelolaMotorState extends State<kelolaMotor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Kelola Motor"),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 10.0),
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