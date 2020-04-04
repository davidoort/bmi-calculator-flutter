import 'package:flutter/material.dart';

const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: kBackgroundTextColor,
);

const kNumberTextStyle = TextStyle(
  fontWeight: FontWeight.w900,
  fontSize: 50.0,
);

const primaryColor = Color(0xFF090B21);

const kBottomContainerHeight = 80.0;
const kBottomContainerColor = Color(0xFFEA1456);
const kSelectedCardColor = Color(0xFF1D1E33);
const kUnselectedCardColor = Color(0x601C1E33);

const kHighlightTextColor = Color(0xDDFFFFFF);
const kBackgroundTextColor = Color(0xFF8E8D99);

enum Gender {
  male,
  female,
}

enum Operation {
  add,
  subtract,
}