import 'dart:math';
import 'package:flutter/material.dart';

class ProgressCustom extends CustomPainter{
  final double carga;
  
  const ProgressCustom(this.carga);

  @override
  void paint(Canvas canvas, Size size){
    final paint1 = Paint()
    ..color = Colors.white
    ..style = PaintingStyle.stroke
    ..strokeWidth = 6;


    final paint2 = Paint()
    ..color = Colors.green
    ..style = PaintingStyle.stroke
    ..strokeWidth = 8;


    final offset = Offset(size.width * 0.48, size.height * 0.48);

    canvas.drawCircle(offset, size.height/2, paint1);
    canvas.drawArc(Rect.fromCircle(center: offset, radius:  size.height/2), -pi / 2, (pi *2* carga) /100 , false, paint2);
    // canvas.drawCircle(offset, size.height/2 , paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}