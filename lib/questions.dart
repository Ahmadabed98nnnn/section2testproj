import 'dart:math';
import 'package:flutter/material.dart';

int currentQuestion = 0;

class questions extends StatefulWidget {
  const questions({super.key});

  @override
  State<questions> createState() {
    return _Questions();
  }
}

class _Questions extends State<questions> {
  void changeQuestion() {
    setState(() {
      currentQuestion = currentQuestion + 1;
      buttonClick = 'Next Question';
    });
  }

  String buttonClick = 'Start Quiz';
  List<String> Questions = [
    'Hello, How are you?',
    'What is your name?',
    'How old are you?',
    'Where do you live?',
    'What time is it now?',
  ];
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          Questions[currentQuestion],
          style: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 32.4,
          ),
        ),
        TextButton(
          onPressed: changeQuestion,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 40),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 32.4,
            ),
          ),
          child: Text(buttonClick),
        ),
      ],
    );
  }
}
