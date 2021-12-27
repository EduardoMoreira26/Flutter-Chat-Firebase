import 'package:chat/core/models/chat_message.dart';
import 'package:chat/core/services/chat/chat_service.dart';
import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  const Messages({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ChatMessage>>(
      stream: ChatService().messagesStream(),
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (!snapshot.hasData) {
          return Center(child: Text('Sem dados. Vamos conversar ?'));
        } else {
          final msgs = snapshot.data;

          return ListView.builder(
            itemCount: msgs.length,
            itemBuilder: (ctx, index) => Text(msgs[index].text),
          );
        }
      },
    );
  }
}
