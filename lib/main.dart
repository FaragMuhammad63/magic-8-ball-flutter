import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Center(child: Text('Ask me anything')),
            backgroundColor: Colors.blue.shade900,
          ),
          body: Ball(),
        ),

      ),
    );
class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int r = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          child: Image.asset('images/ball$r.png'),
          onPressed: (){
            setState(() {
              r = new Random().nextInt(5) + 1;
            });
          },
        ),
      ),
    );
  }
}
