import 'package:flutter/material.dart';

import 'package:angle/angle.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            width: 400,
            height: 400,
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 10,
              ),
            ),
            child: CustomPaint(
              painter: TestPainter(),
            ),
          ),
        ),
      ),
    );
  }
}

class TestPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    drawGrid(canvas, size);
  }

  @override
  bool shouldRepaint(TestPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(TestPainter oldDelegate) => false;
}
