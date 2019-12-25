import 'package:bmi_calc/konstants.dart';
import 'package:flutter/material.dart';

class CustumChild extends StatelessWidget {
  CustumChild({this.text, this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: klableTextStyle,
        )
      ],
    );
  }
}
