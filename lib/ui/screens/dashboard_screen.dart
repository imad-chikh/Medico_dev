import 'package:flutter/material.dart';


import '../../config/theme.dart';
import '../widgets/clock.dart';
import '../widgets/visitors_count.dart';
import 'home_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
        color: bgColor,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                dash_clock(),
                Spacer(),
                visitors_count(),],
            ),
            Column(),
          ],
        ));
  }
}
