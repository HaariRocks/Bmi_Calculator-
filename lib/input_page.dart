import 'package:bmi_calc/custum_child.dart';
import 'package:bmi_calc/konstants.dart';
import 'package:bmi_calc/reusefulCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectGender;
  int height = 180;
  int weight = 60;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReUsefullCard(
                  onPress: () {
                    setState(() {
                      selectGender = Gender.male;
                    });
                  },
                  colour: selectGender == Gender.male
                      ? kactiveCardColour
                      : kinactiveCardColour,
                  childCard: CustumChild(
                    text: "MALE",
                    icon: FontAwesomeIcons.mars,
                  ),
                ),
              ),
              Expanded(
                child: ReUsefullCard(
                  onPress: () {
                    setState(() {
                      selectGender = Gender.female;
                    });
                  },
                  colour: selectGender == Gender.female
                      ? kactiveCardColour
                      : kinactiveCardColour,
                  childCard: CustumChild(
                    text: "FEMALE",
                    icon: FontAwesomeIcons.venus,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ReUsefullCard(
            colour: kactiveCardColour,
            childCard: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "HEIGHT",
                  style: klableTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(
                      height.toString(),
                      style: kIntegerStyle,
                    ),
                    Text(
                      "cm",
                      style: klableTextStyle,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0)),
                  child: Slider(
                    value: height.toDouble(),
                    max: 220,
                    min: 120,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReUsefullCard(
                  colour: kactiveCardColour,
                  childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("WEIGHT", style: klableTextStyle),
                      Text(
                        weight.toString(),
                        style: kIntegerStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FloatingActionButton(
                            backgroundColor: Color(0xFF4C4F5E),
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            child: Icon(
                              FontAwesomeIcons.minus,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          FloatingActionButton(
                            backgroundColor: Color(0xFF4C4F5E),
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            child: Icon(
                              FontAwesomeIcons.plus,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReUsefullCard(
                  colour: kactiveCardColour,
                  childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("AGE", style: klableTextStyle),
                      Text(
                        age.toString(),
                        style: kIntegerStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FloatingActionButton(
                            backgroundColor: Color(0xFF4C4F5E),
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                            child: Icon(
                              FontAwesomeIcons.minus,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          FloatingActionButton(
                            backgroundColor: Color(0xFF4C4F5E),
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            child: Icon(
                              FontAwesomeIcons.plus,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Color(0xFFEB1555),
          width: double.infinity,
          height: kbottomContainerHeight,
          child: Text("data"),
        ),
      ],
    );
  }
}