import 'package:flutter/material.dart';

/// Clip widget in wave shape
class WaveClipperTwo extends CustomClipper<Path> {
  /// reverse the wave direction in vertical axis
  bool reverse;

  /// flip the wave direction horizontal axis
  bool flip;

  WaveClipperTwo({this.reverse = false, this.flip = false});

  @override
  Path getClip(Size size) {
    final path = Path();
    if (!reverse && !flip) {
      path.lineTo(0.0, size.height - 80);

      final firstControlPoint = Offset(size.width / 10, size.height + 50);
      final firstEndPoint = Offset(size.width / 2, size.height - 50.0);
      path.quadraticBezierTo(
        firstControlPoint.dx,
        firstControlPoint.dy,
        firstEndPoint.dx,
        firstEndPoint.dy,
      );

      final secondControlPoint = Offset(
        size.width - (size.width / 25),
        size.height - 180,
      );
      final secondEndPoint = Offset(size.width + 10, size.height - 150);
      path.quadraticBezierTo(
        secondControlPoint.dx,
        secondControlPoint.dy,
        secondEndPoint.dx,
        secondEndPoint.dy,
      );

      path.lineTo(size.width, size.height - 40);
      path.lineTo(size.width, 0.0);
      path.close();
    } else if (!reverse && flip) {
      path.lineTo(0.0, size.height - 40);
      final firstControlPoint = Offset(size.width / 3.25, size.height - 65);
      final firstEndPoint = Offset(size.width / 1.75, size.height - 20);
      path.quadraticBezierTo(
        firstControlPoint.dx,
        firstControlPoint.dy,
        firstEndPoint.dx,
        firstEndPoint.dy,
      );

      final secondCP = Offset(size.width / 1.25, size.height);
      final secondEP = Offset(size.width, size.height - 30);
      path.quadraticBezierTo(
        secondCP.dx,
        secondCP.dy,
        secondEP.dx,
        secondEP.dy,
      );

      path.lineTo(size.width, size.height - 20);
      path.lineTo(size.width, 0.0);
      path.close();
    } else if (reverse && flip) {
      path.lineTo(0.0, 20);
      final firstControlPoint = Offset(size.width / 3.25, 65);
      final firstEndPoint = Offset(size.width / 1.75, 40);
      path.quadraticBezierTo(
        firstControlPoint.dx,
        firstControlPoint.dy,
        firstEndPoint.dx,
        firstEndPoint.dy,
      );

      final secondCP = Offset(size.width / 1.25, 0);
      final secondEP = Offset(size.width, 30);
      path.quadraticBezierTo(
        secondCP.dx,
        secondCP.dy,
        secondEP.dx,
        secondEP.dy,
      );

      path.lineTo(size.width, size.height);
      path.lineTo(0.0, size.height);
      path.close();
    } else {
      path.lineTo(0.0, 20);

      final firstControlPoint = Offset(size.width / 4, 0.0);
      final firstEndPoint = Offset(size.width / 2.25, 30.0);
      path.quadraticBezierTo(
        firstControlPoint.dx,
        firstControlPoint.dy,
        firstEndPoint.dx,
        firstEndPoint.dy,
      );

      final secondControlPoint = Offset(size.width - (size.width / 3.25), 65);
      final secondEndPoint = Offset(size.width, 40);
      path.quadraticBezierTo(
        secondControlPoint.dx,
        secondControlPoint.dy,
        secondEndPoint.dx,
        secondEndPoint.dy,
      );

      path.lineTo(size.width, size.height);
      path.lineTo(0.0, size.height);
      path.close();
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
