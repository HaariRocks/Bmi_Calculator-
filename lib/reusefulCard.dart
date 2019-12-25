import 'package:flutter/material.dart';

class ReUsefullCard extends StatelessWidget {
  ReUsefullCard({@required this.colour, this.childCard, this.onPress});
  final Color colour;
  final Widget childCard;
  final onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
