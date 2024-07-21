import 'package:flutter/material.dart';
import 'package:section2test/gradientcontainer.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
        chosencolors: [
          Color.fromARGB(255, 12, 4, 70),
          Color.fromARGB(255, 40, 9, 125)
        ],
      ),
    ),
  ));
}
