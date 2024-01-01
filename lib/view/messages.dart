// messages.dart
import 'package:chat_bot_app/view/intro_message.dart';
import 'package:chat_bot_app/view/bot_message.dart';
import 'package:chat_bot_app/view/user_message.dart';
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
    //var w = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        ListView.builder(
          itemCount: widget.messages.length,
          itemBuilder: (context, index) {
            return widget.messages[index]['isUserMessage']
                ? UserMessage(
                    message: widget.messages[index]['message'].text.text[0],
                  )
                : BotMessage(
                    message: widget.messages[index]['message'].text.text[0],
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




