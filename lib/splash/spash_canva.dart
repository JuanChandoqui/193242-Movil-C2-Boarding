import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class SplashCanvas extends CustomPainter {

  final ui.Image? image_canvas;

  const SplashCanvas(this.image_canvas);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = const Color(0xFF76AB56);
    paint.style = PaintingStyle.fill;

    final path = Path();
    final path_2 = Path();

    path.lineTo(0, size.height * 0.07);
    path.quadraticBezierTo(size.width * 0.35, size.height * 0.20, size.width * 0.5, 0);
    path.quadraticBezierTo(size.width * 0.1, size.height * 0.1, size.width * 0.95, size.height * 0.1);
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
