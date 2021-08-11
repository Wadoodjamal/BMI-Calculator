import 'package:flutter/material.dart';
import 'icon_card.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

// Enum for determinig gender of the person
enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? gender;
  int height = 120;
  int weight = 50;
  int age = 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App Bar of the bmi calculator
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          //Expanded widget containing row of  male and female icon cards
          Expanded(
            child: Row(
              children: [
                Expanded(
                  //Male icon card
                  child: ResuableCard(
                    onPress: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    colour: gender == Gender.male
                        ? kactiveCardColor
                        : kinactiveCardColor,
                    cardChild: IconCard(
                      icon: FontAwesomeIcons.mars,
                      text: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  //Female icon card
                  child: ResuableCard(
                    onPress: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    colour: gender == Gender.female
                        ? kactiveCardColor
                        : kinactiveCardColor,
                    cardChild: IconCard(
                      icon: FontAwesomeIcons.venus,
                      text: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Expanded widget which contains height text and slider
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ResuableCard(
                    colour: kactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: kheightTextStyle,
                            ),
                            Text(
                              'cm',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                        //Designing code of our integrated slider
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.white60,
                            inactiveTrackColor: kinactiveCardColor,
                            thumbColor: Colors.pink.shade700,
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 16.0),
                            overlayShape: RoundSliderOverlayShape(
                              overlayRadius: 24.0,
                            ),
                            overlayColor: Colors.pink.shade50,
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 120,
                            max: 220,
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
              ],
            ),
          ),
          //Weight and age info containing widgets
          Expanded(
            child: Row(
              children: [
                Expanded(
                  //Card containg information and buttons about the user weight
                  child: ResuableCard(
                    colour: kactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          weight.toString(),
                          style: kheightTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomRoundShapeButtons(
                                onPress: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus),
                            SizedBox(
                              width: 10.0,
                            ),
                            CustomRoundShapeButtons(
                              onPress: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  //Age card which contains the user age and plus minus buttons to add and reduce their age
                  child: ResuableCard(
                    colour: kactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          age.toString(),
                          style: kheightTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomRoundShapeButtons(
                                onPress: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                icon: FontAwesomeIcons.minus),
                            SizedBox(
                              width: 10.0,
                            ),
                            CustomRoundShapeButtons(
                              onPress: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //BMI Submit button
          TextButton(
            onPressed: () {},
            child: Container(
              height: kbottomContainerHeight,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Get Your BMI',
                  style: TextStyle(
                    color: kactiveCardColor,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: kbottomContainerColor,
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomRoundShapeButtons extends StatelessWidget {
  CustomRoundShapeButtons({@required this.onPress, @required this.icon});

  final VoidCallback? onPress;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: 0.0,
      fillColor: Colors.white54,
      shape: CircleBorder(),
      child: Icon(icon),
      constraints: BoxConstraints(
        minHeight: 50.0,
        minWidth: 50.0,
      ),
    );
  }
}
