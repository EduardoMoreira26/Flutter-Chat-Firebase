import 'package:chat/core/models/chat_message.dart';
import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final ChatMessage message;
  final bool belongsToCurrentUser;

  const MessageBubble({Key key, this.message, this.belongsToCurrentUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(message.text);
  }
}