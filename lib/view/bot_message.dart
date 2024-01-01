import 'package:flutter/material.dart';

class BotMessage extends StatelessWidget {
  final String message;

  const BotMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(20),
              ),
              color: Colors.grey.shade800,
            ),
            constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 2 / 3),
            child: Text(message),
          ),
          const SizedBox(width: 8),
          Image.asset(
            'assets/splashBot.png',
            width: 40,
            height: 40,
          ),
        ],
      ),
    );
  }
}