import 'package:flutter/material.dart';
import 'package:calendar_appbar/calendar_appbar.dart';
import 'dart:math';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime? selectedDate;
  Random random = new Random();

  @override
  void initState() {
    setState(() {
      selectedDate = DateTime.now();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CalendarAppBar(
        onDateChanged: (value) => setState(() => selectedDate = value),
        lastDate: DateTime.now(),
        events: List.generate(
            100,
                (index) => DateTime.now()
                .subtract(Duration(days: index * random.nextInt(5)))),
        padding: 0.0,
        backButton: false,
        accent: Colors.cyan.shade300,
      ),
      body: Center(child: Text(selectedDate.toString())),
   );
  }
}