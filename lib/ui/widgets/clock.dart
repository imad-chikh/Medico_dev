import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

Widget dash_clock() =>
Container(

  child:   Column(
  
              children: [
  
                Row(
  
                  crossAxisAlignment: CrossAxisAlignment.center,
  
                  children: [
  
                    Text("${DateTime.now().hour}:${DateTime.now().minute}",style: TextStyle(fontSize: 212,color: Color(0xFF053742)),),
  
                    Text('AM',style: TextStyle(fontSize: 96,color: Color(0xFF053742).withOpacity(0.6)),),
  
                  ],),
  
                Row(children:
  
                [
  
                  Text("${DateFormat.MMMMEEEEd().format(DateTime.now())}",style: TextStyle(fontSize: 36,color: Color(0xFF053742).withOpacity(0.6)),),
  
                ],)
  
              ],
  
            ),
);


