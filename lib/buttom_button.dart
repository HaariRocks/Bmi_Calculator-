import 'package:bmi_calc/konstants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.onTap, this.text});
  final Function onTap;
  final Text text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Color(0xFFEB1555),
        width: double.infinity,
        height: kbottomContainerHeight,
        padding: EdgeInsets.only(bottom: 10.0),
        child: Center(
          child: text,
        ),
      ),
    );
  }
}
