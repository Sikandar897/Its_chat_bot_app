
import 'package:flutter/material.dart';

class UserMessage extends StatelessWidget {
  final String message;

  const UserMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/usericon.png',
            width: 40,
            height: 40,
          ),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(0),
              ),
              color: Colors.grey.shade800,
            ),
            constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 2 / 3),
            child: Text(message),
          ),
        ],
      ),
    );
  }
}