import 'package:flutter/material.dart';

import '../../config/const.dart';
import '../../config/theme.dart';

Widget DrugModelOne() => 
Padding(
  padding: const EdgeInsets.all(16.0),
  child:   Container(
    width: 300,
    height: 300,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(22),
      color: mainColorDim,
    ),
    child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Row(


        mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.medication,color: Colors.white,size: 40,),Text('Model num 1',style: TextStyle(color: Colors.white,fontSize: 30),)],),
          
      CreateNewButton(onTap:(){}),
    ]),
  ),
);
