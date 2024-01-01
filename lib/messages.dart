// messages.dart
import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  final List<Map<String, dynamic>> messages;
  final bool showIntroMessage;

  const MessagesScreen({super.key, required this.messages, required this.showIntroMessage});

  @override
  MessagesScreenState createState() => MessagesScreenState();
}

class MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        ListView.builder(
          itemCount: widget.messages.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: widget.messages[index]['isUserMessage']
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: const Radius.circular(20),
                        topRight: const Radius.circular(20),
                        bottomRight: Radius.circular(
                            widget.messages[index]['isUserMessage'] ? 0 : 20),
                        topLeft: Radius.circular(
                            widget.messages[index]['isUserMessage'] ? 20 : 0),
                      ),
                      color: widget.messages[index]['isUserMessage']
                          ? Colors.grey.shade800
                          : Colors.grey.shade900.withOpacity(0.8),
                    ),
                    constraints: BoxConstraints(maxWidth: w * 2 / 3),
                    child: Text(widget.messages[index]['message'].text.text[0]),
                  ),
                ],
              ),
            );
          },
        ),
        if (widget.showIntroMessage)
          Center(
            child: Container(
              padding: const EdgeInsets.all(16),
              color: Colors.transparent,
              child: const IntroMessage(),
            ),
          ),
      ],
    );
  }
}

class IntroMessage extends StatelessWidget {
  const IntroMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.min,
      children: [
       Image.asset(
          'assets/splashBot.png', 
          width: 100, // Set the desired width
          height: 100, // Set the desired height
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
