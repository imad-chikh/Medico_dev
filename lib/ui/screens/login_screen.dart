import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'dart:io';

import 'package:flutter_acrylic/flutter_acrylic.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  WindowEffect effect = WindowEffect.transparent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        Expanded(
            child: Container(
          color: Color(0xFF053742),
        )),
        Expanded(child: Container(
          child: Column(children: [
            WindowTitleBarBox(
                    child:
                    Row(
                      children: [
                        //Expanded(child: Container()),
                        Expanded(child: MoveWindow()),
                        WindowButtons()
                      ],
                    ),
                  ),
                  Container( )
                  
          ],)
        )),
      ]),
      backgroundColor: Colors.transparent, //Colors.transparent,
    );
  }
}



class WindowButtons extends StatelessWidget {
  const WindowButtons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(colors: buttonColors),
        MaximizeWindowButton(colors: buttonColors),
        CloseWindowButton(colors: closeButtonColors),
      ],
    );
  }
}

/*!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!*/
//button Colors
final buttonColors = WindowButtonColors(
    iconNormal: Colors.black54, // const Color(0xFF805306),
    mouseOver: Colors.black26, //const Color(0xFFF6A00C),
    mouseDown: Colors.black45, //const Color(0xFF805306),
    iconMouseOver: Colors.black45, //const Color(0xFF805306),
    iconMouseDown: const Color(0xFFffffff)); // const Color(0xFFFFD500));

final closeButtonColors = WindowButtonColors(
    mouseOver: const Color(0xFFD32F2F),
    mouseDown: const Color(0xFFB71C1C),
    iconNormal: const Color(0xFF805306),
    iconMouseOver: Colors.white);
