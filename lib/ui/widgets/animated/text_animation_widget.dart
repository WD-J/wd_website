import 'package:flutter/material.dart';

class TextAnimationWidget extends StatelessWidget {
  TextAnimationWidget({required this.controller, required this.text})
      : startOpacity = Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, 0.500, curve: Curves.fastLinearToSlowEaseIn),
          ),
        ),
        endOpacity = Tween<double>(
          begin: 1.0,
          end: 0.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.500, 1.0, curve: Curves.fastLinearToSlowEaseIn),
          ),
        ),
        startPadding = Tween<double>(
          begin: 10.0,
          end: 0.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, 0.500, curve: Curves.fastLinearToSlowEaseIn),
          ),
        ),
        endPadding = Tween<double>(
          begin: 0.0,
          end: 10.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.500, 1.0, curve: Curves.fastLinearToSlowEaseIn),
          ),
        );

  final String text;
  final AnimationController controller;
  final Animation<double> startOpacity;
  final Animation<double> endOpacity;
  final Animation<double> startPadding;
  final Animation<double> endPadding;

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Opacity(
      opacity:
          startOpacity.value != 1.0 ? startOpacity.value : endOpacity.value,
      child: Padding(
        padding: EdgeInsets.only(
          top: startPadding.value,
          bottom: endPadding.value,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 32.0,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: _buildAnimation,
    );
  }
}
