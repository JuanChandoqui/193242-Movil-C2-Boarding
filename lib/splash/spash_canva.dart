import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:mvp_all/styles/Colors/ColorsView.dart';

class SplashCanvas extends CustomPainter {

  final ui.Image? image_canvas;

  const SplashCanvas(this.image_canvas);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = ColorsViews.colorSplash;
    paint.style = PaintingStyle.fill;

    final path = Path();
    final path_2 = Path();

    path.lineTo(0, size.height * 0.1);
    path.quadraticBezierTo(size.width * 0.15, size.height * 0.18,size.width * 0.35, size.height * 0.13);
    path.quadraticBezierTo(size.width * 0.55, size.height * 0.07,size.width * 0.8, size.height * 0.1);
    path.quadraticBezierTo(size.width * 0.98, size.height * 0.13, size.width, size.height * 0.12);
    path.lineTo(size.width, size.height * 0.08);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);

    path_2.lineTo(0, size.height);
    path_2.quadraticBezierTo(size.width * 0.75, size.height * 0.75, size.width, size.height);
    path_2.lineTo(0, size.height);

    canvas.drawPath(path_2, paint);
    
    canvas.scale(0.23, 0.23);
    if(image_canvas != null){
      canvas.drawImage(image_canvas!, const Offset(180 * 2.5, 420 * 2.5), paint);
    }
    

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
