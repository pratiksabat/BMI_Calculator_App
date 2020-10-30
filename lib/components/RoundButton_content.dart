import 'package:flutter/material.dart';


class RoundButton extends StatelessWidget {
  final IconData icon;
  final Function operation;
  RoundButton(this.icon,this.operation);
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(icon),
      onPressed: operation,
      elevation: 6,
    );
  }

}
