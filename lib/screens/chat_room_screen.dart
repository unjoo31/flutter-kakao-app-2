import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:kakao_app_2/components/chat_icon_button.dart';
import 'package:kakao_app_2/components/my_chat.dart';
import 'package:kakao_app_2/components/other_chat.dart';
import 'package:kakao_app_2/components/time_line.dart';

class ChatRoomsScreens extends StatefulWidget {
  const ChatRoomsScreens({super.key});

  @override
  State<ChatRoomsScreens> createState() => _ChatRoomsScreensState();
}

class _ChatRoomsScreensState extends State<ChatRoomsScreens> {
  final List<MyChat> chats = [];
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFb2c7da),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "홍길동",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          actions: [
            Icon(FontAwesomeIcons.search, size: 20),
            SizedBox(width: 25),
            Icon(FontAwesomeIcons.bars, size: 20),
            SizedBox(width: 25),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TimeLine(
                      time: "2021년 1월 1일 금요일",
                    ),
                    OtherChat(
                      name: "홍길동",
                      text: "새해 복 많이 받으세요",
                      time: "오전 10:10",
                    ),
                    MyChat(
                      text: "선생님도 많이 받으시오",
                      time: "오후 2:15",
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 60,
              color: Colors.white,
              child: Row(
                children: [
                  ChatIconButton(icon: Icon(FontAwesomeIcons.plusSquare)),
                  Expanded(
                    child: Container(
                      child: TextField(
                        controller: _textController,
                        maxLines: 1,
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                        onSubmitted: _handleSubmitter,
                      ),
                    ),
                  ),
                  const ChatIconButton(icon: Icon(FontAwesomeIcons.smile)),
                  const ChatIconButton(icon: Icon(FontAwesomeIcons.cog)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleSubmitter(text) {
    _textController.clear();

    setState(() {
      chats.add(
        MyChat(
          text: text,
          time: DateFormat("a K:m")
              .format(new DateTime.now())
              .replaceAll("AM", "오전")
              .replaceAll("PM", "오후"),
        ),
      );
    });
  }
}
