import 'package:flutter/material.dart';

class ReUsefullCard extends StatelessWidget {
  ReUsefullCard({@required this.colour, this.childCard});
  final Color colour;
  final childCard;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
