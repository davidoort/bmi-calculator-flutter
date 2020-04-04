import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'gender_card.dart';
import 'style_config.dart';




class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = unselectedCardColor;
  Color femaleCardColor = unselectedCardColor;

  void updateColor(int gender) {
    // 1 male, 2 female
    if (gender == 1) {
      if (maleCardColor == unselectedCardColor) {
        maleCardColor = selectedCardColor;
        if (femaleCardColor == selectedCardColor) {
          femaleCardColor = unselectedCardColor;
        }
      } else {
        maleCardColor = unselectedCardColor;
      }
    } else {
      if (femaleCardColor == unselectedCardColor) {
        femaleCardColor = selectedCardColor;
        if (maleCardColor == selectedCardColor) {
          maleCardColor = unselectedCardColor;
        }
      } else {
        femaleCardColor = unselectedCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColor,
                      cardChild: GenderCard(
                        gender: 'male',
                        selected:
                            maleCardColor == selectedCardColor ? true : false,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColor,
                      cardChild: GenderCard(
                        gender: 'female',
                        selected:
                            femaleCardColor == selectedCardColor ? true : false,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: selectedCardColor),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: selectedCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: selectedCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
