import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import the intl package
import 'footer.dart'; // Assuming footer.dart contains your BottomNavBar widget

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  String getCurrentMonth() {
    DateTime now = DateTime.now();
    return DateFormat.MMMM().format(now); // Format to get only Month
  }

  String getCurrentYear() {
    DateTime now = DateTime.now();
    return DateFormat.y().format(now); // Format to get only Year
  }

  List<String> getWeekDays() {
    DateFormat dateFormat = DateFormat.E(); // Format to get short day names (e.g., Mon, Tue)
    DateTime now = DateTime.now();
    int currentDayOfWeek = now.weekday; // 1 for Monday, 7 for Sunday

    List<String> weekDays = [];
    for (int i = 1; i <= 7; i++) {
      DateTime day = now.subtract(Duration(days: currentDayOfWeek - i));
      weekDays.add(dateFormat.format(day));
    }
    return weekDays;
  }

  List<int> getWeekDates() {
    DateTime now = DateTime.now();
    int currentDayOfWeek = now.weekday; // 1 for Monday, 7 for Sunday

    List<int> weekDates = [];
    for (int i = 1; i <= 7; i++) {
      DateTime day = now.subtract(Duration(days: currentDayOfWeek - i));
      weekDates.add(day.day);
    }
    return weekDates;
  }

  @override
  Widget build(BuildContext context) {
    List<String> weekDays = getWeekDays();
    List<int> weekDates = getWeekDates();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: getCurrentMonth(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                  fontFamily: 'Montserrat',
                ),
              ),
              const TextSpan(
                text: ' ',
              ),
              TextSpan(
                text: getCurrentYear(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                  color: Colors.teal,
                  fontFamily: 'Montserrat',
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0),
              child: Table(
                border: TableBorder.all(color: Colors.transparent),
                defaultColumnWidth: const FlexColumnWidth(1.0), // Set default column width to fill available space equally
                children: [
                  TableRow(
                    children: weekDays.map((day) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0), // Tambahkan padding di bagian atas
                          child: Text(
                            day,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  const TableRow(
                    children: [
                      SizedBox(height: 10),
                      SizedBox(height: 10),
                      SizedBox(height: 10),
                      SizedBox(height: 10),
                      SizedBox(height: 10),
                      SizedBox(height: 10),
                      SizedBox(height: 10),
                    ],
                  ),
                  TableRow(
                    children: weekDates.map((date) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: RawMaterialButton(
                            onPressed: () {
                              // Add your onPressed logic here
                            },
                            shape: const CircleBorder(),
                            elevation: 0,
                            fillColor: Colors.teal.withOpacity(0.1),
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              date.toString(),
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  TableRow(
                    children: [
                      Container(
                        color: Colors.grey[200], // Warna abu-abu
                        height: 200, // Atur tinggi container sesuai kebutuhan
                        child: Center(
                          child: Text(
                            'Your content goes here',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Container(),
                      Container(),
                      Container(),
                      Container(),
                      Container(),
                      Container(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(), // Add your BottomNavBar widget here
    );
  }
}

