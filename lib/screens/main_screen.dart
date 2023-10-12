import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kakao_app_2/screens/chat_screen.dart';
import 'package:kakao_app_2/screens/friend_screen.dart';
import 'package:kakao_app_2/screens/more_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          FriendScreen(),
          ChatScreen(),
          MoreScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showSelectedLabels: false, // 선택된 label을 보여주지 않겠다
        showUnselectedLabels: false, // 선택되지 않은 label을 보여주지 않겠다
        selectedItemColor: Colors.black, // 선택된 아이콘 색상
        unselectedItemColor: Colors.black54, // 선택되지 않은 아이콘 색상
        backgroundColor: Colors.grey[100],
        onTap: (value) {
          print("선택된 바텀 메뉴 ${value}");
          setState(() {
            _selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.comment),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.ellipsisH),
            label: "",
          ),
        ],
      ),
    );
  }
}
