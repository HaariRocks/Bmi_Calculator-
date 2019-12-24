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
        color: Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
