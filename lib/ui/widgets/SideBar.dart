import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';

import '../../config/theme.dart';

Widget SideMenuBar({
  required PageController controller,
  required List<SideMenuItem> item,
}) =>
    SideMenu(
      showToggle: true,
      
      title: Column(
        children: [
          //  Row(
          //   children: [
          //     ConstrainedBox(
          //       constraints: BoxConstraints(
          //         maxWidth: 100,
          //         maxHeight: 100,
          //       ),
          //       child: Image.asset(
          //         'assets/images/app_logo.png',
          //       ),
          //     ),
          //     Text(
          //       'Medical Clinic',
          //       style: TextStyle(color: mainColor, fontSize: 24),
          //     ),
          //   ],
          // ),
         
        ],
      ), //SizedBox(height: 150),
      style: SideMenuStyle(
          displayMode: SideMenuDisplayMode.compact,
          hoverColor: mainColorLight,
          selectedColor: mainColor,
          compactSideMenuWidth: 70,
          selectedTitleTextStyle: const TextStyle(color: Colors.white),
          selectedIconColor: Colors.white,
          unselectedIconColor: mainColor,
          itemBorderRadius: BorderRadius.circular(0),
          itemOuterPadding: EdgeInsets.all(0),
          unselectedTitleTextStyle: TextStyle(color: mainColor),
          backgroundColor: Colors.white),
      items: item,
      controller: controller,
      collapseWidth: 1200,
    );
