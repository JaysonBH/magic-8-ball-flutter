import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.blue.shade500,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.indigo.shade600,
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 3;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          child: Image.asset('images/ball$ballNumber.png'),
          onPressed: () {
            //print('I got clicked');
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
              print(ballNumber);
            });
          },
        ),
      ),
    );
  }
}
