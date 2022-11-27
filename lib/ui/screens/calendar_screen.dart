import 'package:flutter/material.dart';


import '../../config/theme.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: const Center(
        child: Text(
          'Calendar',
          style: TextStyle(fontSize: 35,color: Colors.black),
        ),
      ),
    );
  }
}
