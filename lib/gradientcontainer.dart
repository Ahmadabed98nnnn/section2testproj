import 'package:flutter/material.dart';
import 'package:section2test/questions.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.chosencolors});
  final List<Color> chosencolors;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: chosencolors,
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: Center(
        child: questions(),
      ),
    );
  }
}
