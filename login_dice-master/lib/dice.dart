import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {

  int leftDiceNum = 1;
  int rightDiceNum = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Dice game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 20,
                children: [
                  Expanded(
                    child: Image(image: AssetImage('image/dice$leftDiceNum.png')),
                  ),
                  Expanded(
                    child: Image(image: AssetImage('image/dice$rightDiceNum.png')),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60.0),
            ButtonTheme(
                minWidth: 100.0,
                height: 60.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent
                  ),
                  child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 50.0,
                  ),
                  onPressed: () {
                    setState(() {
                      leftDiceNum = Random().nextInt(6) + 1;
                      rightDiceNum = Random().nextInt(6) + 1;
                    });
                  },
                )
            )
          ],
        ),
      ),
    );
  }
}