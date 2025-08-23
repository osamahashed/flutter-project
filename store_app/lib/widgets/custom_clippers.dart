import 'package:flutter/material.dart';

// Custom Clipper للدوائر
class CircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.addOval(Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: size.width / 2,
    ));
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

// Custom Clipper للأمواج
class WaveClipper extends CustomClipper<Path> {
  final bool reverse;

  WaveClipper({this.reverse = false});

  @override
  Path getClip(Size size) {
    var path = Path();
    if (!reverse) {
      path.lineTo(0, size.height * 0.8);
      path.quadraticBezierTo(
          size.width * 0.25, size.height, size.width * 0.5, size.height * 0.8);
      path.quadraticBezierTo(
          size.width * 0.75, size.height * 0.6, size.width, size.height * 0.8);
      path.lineTo(size.width, 0);
    } else {
      path.lineTo(0, size.height * 0.2);
      path.quadraticBezierTo(
          size.width * 0.25, 0, size.width * 0.5, size.height * 0.2);
      path.quadraticBezierTo(
          size.width * 0.75, size.height * 0.4, size.width, size.height * 0.2);
      path.lineTo(size.width, size.height);
      path.lineTo(0, size.height);
    }
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}