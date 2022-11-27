import 'package:flutter/material.dart';

import '../../config/theme.dart';
import '../widgets/drugs_model_one.dart';


class PrescriptionScreen extends StatelessWidget {
  const PrescriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: Column(
        children: [
          Text(
            'Choose a Presccription Model :',
            style: TextStyle(
                color: mainColorDim, fontSize: 36, fontWeight: FontWeight.bold),
          ),
          Row(children: [
            DrugModelOne(),
          ],)
        ],
      ),
    );
  }
}
