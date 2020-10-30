import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function Gesture;
  ReusableCard({@required this.colour, this.cardChild,this.Gesture});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Gesture,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
