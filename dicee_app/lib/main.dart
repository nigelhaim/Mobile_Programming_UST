import 'package:flutter/material.dart';
import 'dart:math';

/**
 * References: 
 * 
 * https://docs.flutter.dev/release/breaking-changes/buttons
 */
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: <Widget>[
        Expanded(
          //FlatButton is now replaced with TextButton
          child: TextButton(
            onPressed: () {
              setState(() {
                leftDiceNumber = Random().nextInt(6) + 1;
                rightDiceNumber = Random().nextInt(6) + 1;
              });
              print('Left button got pressed');
            },
            child: Image.asset('images/dice$leftDiceNumber.png'),
          ),
        ),
        Expanded(
          //FlatButton is now replaced with TextButton
          child: TextButton(
            onPressed: () {
              setState(() {
                rightDiceNumber = Random().nextInt(6) + 1;
                leftDiceNumber = Random().nextInt(6) + 1;
              });
              print('Right button got pressed');
            },
            child: Image.asset('images/dice$rightDiceNumber.png'),
          ),
        ),
      ],
    ));
  }
}
