import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber=0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(child: TextButton(
          onPressed:(){
            setState(() {
              ballNumber=Random().nextInt(4)+1;
              print(ballNumber);
            });
          },
          child: Image.asset('images/ball$ballNumber.png'))),
    );
  }
}


class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Ball(),
      appBar: AppBar(
        title: Text('Ask me anything'),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}


