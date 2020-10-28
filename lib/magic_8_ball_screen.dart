import 'dart:math';

import 'package:flutter/material.dart';

class Magic8Ball extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<Magic8Ball> {
  var number = 1;

  void randomize() {
    setState(() {
      number = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[900], Colors.blue[800], Colors.blue[700]],
          ),
        ),
        child: Center(
          child: GestureDetector(
            onTap: () {
              randomize();
            },
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Image.asset('images/ball$number.png'),
            ),
          ),
        ),
      ),
    );
  }
}
