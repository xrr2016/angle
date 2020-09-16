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
          child: BarChart(
            max: 6000.0,
            data: [
              {
                "label": "中国",
                "value": 2800.0,
              },
              {
                "label": "印度",
                "value": 3000.0,
              },
              {
                "label": "美国",
                "value": 2200.0,
              },
              {
                "label": "巴西",
                "value": 3800.0,
              },
              {
                "label": "法国",
                "value": 5200.0,
              },
            ],
          ),
        ),
      ),
    );
  }
}
