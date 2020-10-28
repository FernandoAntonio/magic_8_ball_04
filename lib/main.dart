import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'magic_8_ball_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[800],
        appBar: GradientAppBar(
          title: Text('Ask Me Anything'),
          gradient: LinearGradient(
            colors: [Colors.blue[900], Colors.blue[800], Colors.blue[700]],
          ),
        ),
        body: Magic8Ball(),
      ),
    );
  }
}
