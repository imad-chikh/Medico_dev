import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config/const.dart';

Widget visitors_count(
  //double? width,
  //double? height,
) => Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(22),
            ),
           // width: width,
            //height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'PATIENTS WAITING :',
                      style: TextStyle(
                          color: Color(0xFF053742),
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      '4',
                      style: TextStyle(
                          color: Color(0xFF053742).withOpacity(0.67),
                          fontSize: 178),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'PTOTAL PATIENTS TODAY',
                      style: TextStyle(
                          color: Color(0xFF053742),
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      '12',
                      style: TextStyle(
                          color: Color(0xFF053742).withOpacity(0.67),
                          fontSize: 64),
                    ),
                  ],
                ),
                MoreButton(onTap: (){}),
              ],
            ),
          ),
        ),
      ],
    );
