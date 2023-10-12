import 'package:flutter/material.dart';

class ChatIconButton extends StatelessWidget {
  const ChatIconButton({Key? key, required this.icon});

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: icon,
      iconSize: 25,
      padding: EdgeInsets.symmetric(horizontal: 15),
    );
  }
}
