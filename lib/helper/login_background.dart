import 'package:flutter/material.dart';

class LoginBackground extends CustomPainter {
  LoginBackground({required this.isJoin});

  final bool isJoin;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = isJoin?Colors.green:Colors.indigo;
    canvas.drawCircle(Offset(size.width*0.5, size.width*0.35), size.height * 0.5, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}