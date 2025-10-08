import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  List size = [50.0, 100.0, 150.0, 200.0, 250.0, 300.0, 350.0];
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat();
    _animation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOutCubicEmphasized,
      ),
    );
    _controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: size[0] * _animation.value,
              width: size[0] * _animation.value,
              decoration: BoxDecoration(
                color: Colors.deepPurple.withOpacity(1.0 - _animation.value),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: size[1] * _animation.value,
              width: size[1] * _animation.value,
              decoration: BoxDecoration(
                color: Colors.deepPurple.withOpacity(1.0 - _animation.value),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: size[2] * _animation.value,
              width: size[2] * _animation.value,
              decoration: BoxDecoration(
                color: Colors.deepPurple.withOpacity(1.0 - _animation.value),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: size[3] * _animation.value,
              width: size[3] * _animation.value,
              decoration: BoxDecoration(
                color: Colors.deepPurple.withOpacity(1.0 - _animation.value),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: size[4] * _animation.value,
              width: size[4] * _animation.value,
              decoration: BoxDecoration(
                color: Colors.deepPurple.withOpacity(1.0 - _animation.value),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: size[5] * _animation.value,
              width: size[5] * _animation.value,
              decoration: BoxDecoration(
                color: Colors.deepPurple.withOpacity(1.0 - _animation.value),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: size[6] * _animation.value,
              width: size[6] * _animation.value,
              decoration: BoxDecoration(
                color: Colors.deepPurple.withOpacity(1.0 - _animation.value),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
