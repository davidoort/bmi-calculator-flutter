import 'package:flutter/material.dart';
import 'utils.dart';

class BottomButton extends StatelessWidget {
  final String displayText;
  final Function onTap;
  BottomButton({@required this.displayText, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            displayText,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        height: kBottomContainerHeight,
      ),
    );
  }
}
