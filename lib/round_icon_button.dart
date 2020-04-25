import 'package:flutter/material.dart';
import './util.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onClick;
  RoundIconButton({@required this.icon, this.onClick});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onClick,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      fillColor: roundButtonColor,
      shape: CircleBorder(),
    );
  }
}
