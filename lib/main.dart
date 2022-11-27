import 'dart:io';
import 'package:flutter/material.dart';
import 'demo.dart';
import 'ui/screens/home_screen.dart';
import 'ui/screens/login_screen.dart';

Future<void> main() async
{
 /* WidgetsFlutterBinding.ensureInitialized();
  await Window.initialize();
  await Window.setEffect(
    effect: WindowEffect.transparent,
    color: Color(0xCC222222),
  );*/
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        splashFactory: InkRipple.splashFactory,
      ),
      darkTheme: ThemeData.dark().copyWith(
        splashFactory: InkRipple.splashFactory,
      ),
      themeMode: ThemeMode.dark,
      home:HomeScreen(),//MyHomePage(title: 'exxmple',),// HomeScreen(),
    );
  }
}



