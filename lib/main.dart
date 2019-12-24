import 'package:bmi_calc/custum_child.dart';
import 'package:bmi_calc/reusefulCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),
        body: InputPage(),
      ),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleTappedColor = inactiveCardColour;
  Color femaleTappedColor = inactiveCardColour;

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleTappedColor == inactiveCardColour) {
        maleTappedColor = activeCardColour;
      } else {
        maleTappedColor = inactiveCardColour;
      }
    }
    if (gender == 2) {
      if (femaleTappedColor == inactiveCardColour) {
        femaleTappedColor = activeCardColour;
      } else {
        femaleTappedColor = inactiveCardColour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  child: ReUsefullCard(
                    colour: maleTappedColor,
                    childCard: CustumChild(
                      text: "MALE",
                      icon: FontAwesomeIcons.mars,
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
                  child: ReUsefullCard(
                    colour: femaleTappedColor,
                    childCard: CustumChild(
                      text: "FEMALE",
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ReUsefullCard(
            colour: activeCardColour,
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReUsefullCard(
                  colour: activeCardColour,
                ),
              ),
              Expanded(
                child: ReUsefullCard(
                  colour: activeCardColour,
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Color(0xFFEB1555),
          width: double.infinity,
          height: bottomContainerHeight,
        ),
      ],
    );
  }
}
