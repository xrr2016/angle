import 'package:flutter/material.dart';

abstract class BaseChart {
  List<Color> colors;
  Size size;
  List data;

  void draw(Canvas canvas) {}
}
