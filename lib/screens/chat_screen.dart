import 'package:flutter/material.dart';
import 'package:kakao_app_2/components/chat_card.dart';
import 'package:kakao_app_2/models/chat.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("채팅"),
      ),
      body: ListView(
        children: List.generate(
            chats.length, (index) => ChatCard(chat: chats[index])),
      ),
    );
  }
}
