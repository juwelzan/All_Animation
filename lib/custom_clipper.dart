import 'package:flutter/material.dart';

class CustomClippers extends CustomClipper<Path> {
  final double fraction;
  final Offset center;
  final double maxRadius;

  CustomClippers({
    required this.fraction,
    required this.center,
    required this.maxRadius,
  });
  @override
  Path getClip(Size size) {
    final Path path = Path();
    double currentRadius = maxRadius * fraction;
    path.addOval(Rect.fromCircle(center: center, radius: currentRadius));
    return path;
  }

  @override
  bool shouldReclip(CustomClippers oldClipper) {
    return oldClipper.fraction != fraction;
  }
}
