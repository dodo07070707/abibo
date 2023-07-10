import 'package:flutter/material.dart';

abstract class CircleDesign {
  static const RedGradient = ShapeDecoration(
    gradient: LinearGradient(
      begin: Alignment(1.00, 0.00),
      end: Alignment(-1, 0),
      colors: [
        Colors.black,
        Color(0xFFA50105),
        Color(0xFFE10208),
        Color(0xFFA50105),
        Colors.black
      ],
    ),
    shape: OvalBorder(),
  );
  static const BlueGradient = ShapeDecoration(
    gradient: LinearGradient(
      begin: Alignment(1.00, 0.00),
      end: Alignment(-1, 0),
      colors: [
        Color(0xFF070B30),
        Color(0xFF134EA8),
        Color(0xFFE4E7EE),
        Color(0xFF1554B2),
        Color(0xFF06082B)
      ],
    ),
    shape: OvalBorder(),
  );
  static const BlackGradient = ShapeDecoration(
    gradient: LinearGradient(
      begin: Alignment(1.00, 0.00),
      end: Alignment(-1, 0),
      colors: [
        Color(0xFF070B30),
        Color(0xFF383838),
        Color(0xFFE4E7EE),
        Color(0xFF474748),
        Color(0xFF06082B)
      ],
    ),
    shape: OvalBorder(),
  );
}
