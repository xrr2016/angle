import 'package:flutter/material.dart';

import '../constants/config.dart';

Paint paint = Paint()
  ..isAntiAlias = true
  ..color = AngleConfig.gridLineColorNormal
  ..strokeWidth = AngleConfig.gridLineWidth;

final double step = AngleConfig.gridStepWidth; // 小格边长

void drawXAxisLines(Canvas canvas, Size size) {
  canvas.save();
  final Offset p1 = Offset(0, 0);
  final Offset p2 = Offset(size.width, 0);

  for (double i = 0; i <= size.height; i += step) {
    canvas.drawLine(p1, p2, paint);
    canvas.translate(0, step);
  }

  canvas.restore();
}

void drawYAxisLines(Canvas canvas, Size size) {
  canvas.save();
  final Offset p1 = Offset(0, 0);
  final Offset p2 = Offset(0, size.height);

  for (double i = 0; i <= size.width; i += step) {
    canvas.drawLine(p1, p2, paint);
    canvas.translate(step, 0);
  }

  canvas.restore();
}

void drawGrid(Canvas canvas, Size size) {
  AngleConfig.gridStepWidth = size.width / AngleConfig.gridSplitNums;
  drawXAxisLines(canvas, size);
  drawYAxisLines(canvas, size);
}
