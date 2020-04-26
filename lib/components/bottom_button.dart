import 'package:flutter/material.dart';

import '../util.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String label;

  BottomButton({@required this.onTap, @required this.label});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 12.0),
        child: Center(
          child: Text(label, style: TextStyle(fontSize: 25.0)),
        ),
        width: double.infinity,
        color: bottomContainerColor,
        height: bottomContainerHeight,
      ),
    );
  }
}
