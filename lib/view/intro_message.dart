import 'package:flutter/material.dart';

class IntroMessage extends StatelessWidget {
  const IntroMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.min,
      children: [
       Image.asset(
          'assets/splashBot.png', 
          width: 100, 
          height: 100,
        ),
        const SizedBox(height: 8),
        const Text(
          'Hello there! It\'s ElexenderBot. How can I assist you?',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}