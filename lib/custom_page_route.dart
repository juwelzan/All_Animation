import 'dart:math' as math;

import 'package:circular_fade_transition/custom_clipper.dart';
import 'package:flutter/widgets.dart';

class CustomPageRoute {
  Route customPageroute(Widget nextPage, BuildContext context) {
    final center = Offset(
      MediaQuery.of(context).size.width / 2,
      MediaQuery.of(context).size.height / 2,
    );
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => nextPage,
      transitionDuration: Duration(milliseconds: 700),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        double maxRadius = math.sqrt(
          math.pow(MediaQuery.of(context).size.height, 2) +
              math.pow(MediaQuery.of(context).size.width, 2),
        );
        return ClipPath(
          clipper: CustomClippers(
            fraction: animation.drive(CurveTween(curve: Curves.easeIn)).value,
            center: center,
            maxRadius: maxRadius,
          ),
          child: child,
        );
      },
    );
  }
}
