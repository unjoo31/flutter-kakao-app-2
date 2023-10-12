import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

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
          Center(
            child: Text("IndexedStack1"),
          ),
          Center(
            child: Text("IndexedStack2"),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showSelectedLabels: false, // 선택된 label을 보여주지 않겠다
        showUnselectedLabels: false, // 선택되지 않은 label을 보여주지 않겠다
        selectedItemColor: Colors.black, // 선택된 아이콘 색상
        unselectedItemColor: Colors.black54, // 선택되지 않은 아이콘 색상
        onTap: (value) {
          print("선택된 바텀 메뉴 ${value}");
          setState(() {
            _selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          ),
        ],
      ),
    );
  }
}
