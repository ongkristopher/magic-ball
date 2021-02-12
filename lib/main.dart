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
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("Ask me anything"),
        backgroundColor: Colors.blue[900],
      ),
      body: Ball(),
    ));
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          child: Image.asset("images/ball$ballNumber.png"),
          onPressed: (){
            setState(() {
              ballNumber = Random().nextInt(4) + 1;
            });
          },
        ),

      )
    );
  }
}
