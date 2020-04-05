import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'utils.dart';

class GenderCard extends StatelessWidget {
  final String gender;
  final bool selected;

  GenderCard({@required this.gender, @required this.selected});

  @override
  Widget build(BuildContext context) {
    final genderDisplayText = gender == 'male' ? 'MALE' : 'FEMALE';
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          gender == 'male' ? FontAwesomeIcons.mars : FontAwesomeIcons.venus,
          size: 80.0,
          color: selected ? kHighlightTextColor : kBackgroundTextColor,
        ),
        Padding(
          padding: EdgeInsets.all(30),
          child: Text(
            genderDisplayText,
            style: kLabelTextStyle,
          ),
        ),
      ],
    );
  }
}