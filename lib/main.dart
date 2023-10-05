import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Center(
            child: Text(
              'Roll Dice',
              style: TextStyle(
                fontFamily: 'Pacifico',
              ),
            ),
          ),
          backgroundColor: Colors.black54,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftNum = (Random().nextInt(6))+1;
  int rightNum = (Random().nextInt(6))+1;
  @override
  Widget build(BuildContext context) {
    void RollDice(){
      setState(() {
        rightNum = (Random().nextInt(6))+1;
        leftNum = (Random().nextInt(6))+1;
      });
    }
    return SafeArea(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextButton(
                  onPressed: () {
                    RollDice();
                  },
                  child: Image.asset('images/dice$leftNum.png')
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                    RollDice();
                },
                child: Image.asset('images/dice$rightNum.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



