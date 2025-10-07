import 'package:circular_fade_transition/custom_page_route.dart';
import 'package:circular_fade_transition/screen/second_screen.dart';
import 'package:flutter/material.dart';

class FastScreen extends StatefulWidget {
  const FastScreen({super.key});

  @override
  State<FastScreen> createState() => _FastScreenState();
}

class _FastScreenState extends State<FastScreen> {
  CustomPageRoute customPageRoute = CustomPageRoute();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              customPageRoute.customPageroute(SecondScreen(), context),
            );
          },
          child: Text("Click"),
        ),
      ),
    );
  }
}
