
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medico/ui/screens/patients_screen.dart';
import 'package:medico/ui/screens/settings_screen.dart';


import '../widgets/SideBar.dart';
import 'calendar_screen.dart';
import 'dashboard_screen.dart';
import 'drugs_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController screen = PageController();
  
  get bgColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        SideMenuBar(controller: screen, item: [
          SideMenuItem(
            priority: 0,
            title: 'Dashboard',
            onTap: () {
              screen.jumpToPage(0);
            },
            icon: const Icon(Icons.home),
            badgeContent: const Text(
              '3',
              style: TextStyle(color: Colors.white),
            ),
            tooltipContent: "This is a tooltip for Dashboard item",
          ),
          SideMenuItem(
            priority: 1,
            title: 'Patients',
            onTap: () {
              screen.jumpToPage(1);
            },
            icon: const Icon(Icons.supervisor_account),
          ),
          SideMenuItem(
            priority: 2,
            title: 'Prescriptions',
            onTap: () {
              screen.jumpToPage(2);
            },
            icon: const Icon(Icons.file_copy_rounded),
            trailing: Container(
                decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(6))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6.0, vertical: 3),
                  child: Text(
                    'New',
                    style: TextStyle(fontSize: 11, color: Colors.grey[800]),
                  ),
                )),
          ),
          SideMenuItem(
            priority: 3,
            title: 'Calendar',
            onTap: () {
              screen.jumpToPage(3);
            },
            icon: const Icon(Icons.calendar_month),
          ),
          SideMenuItem(
            priority: 4,
            title: 'Settings',
            onTap: () {
              screen.jumpToPage(4);
            },
            icon: const Icon(Icons.settings),
          ),
          
          const SideMenuItem(
            priority: 7,
            title: 'Exit',
            icon: Icon(Icons.exit_to_app),
          ),
        ]),
        Expanded(
            child: Container(
                child: Column(
          children: [
            WindowTitleBarBox(
              child: Row(
                children: [
                  //Expanded(child: Container()),
                  Expanded(child: MoveWindow()),
                  WindowButtons()
                ],
              ),
            ),
            Expanded(
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: screen,
                children: [
                  DashboardScreen(),
                  PatientsScreen(),
                  PrescriptionScreen(),
                  CalendarScreen(),
                  SettingScreen(),
                  Container(
                    color: Colors.white,
                    child: const Center(
                      child: Text(
                        'Only Title',
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: const Center(
                      child: Text(
                        'Only Icon',
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ))),
      ]),
      backgroundColor: bgColor,
      //Colors.transparent,
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

Button() => InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(22),
      child: Container(
        height: 41,
        width: 115,
        decoration: BoxDecoration(
            color: Color(0xFF053742).withOpacity(0.2),
            borderRadius: BorderRadius.circular(40)),
        child: Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Text(
              'More',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF053742)),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: CircleAvatar(
                backgroundColor: Color(0xFF142F35).withOpacity(0.8),
                child: Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                  size: 28,
                ),
              ),
            )
          ],
        ),
      ),
    );
