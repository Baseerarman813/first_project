import 'package:flutter/material.dart';
import 'package:new_ui/home_1.dart';
import 'package:new_ui/meeting_page.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final screen = [
    homeone(),
    meetingpage(),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (data) {
          setState(() {
            selectedIndex = data;
          });
        },
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.blueAccent,
              icon: Icon(Icons.home_outlined),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline), label: 'chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_rounded), label: 'meeting'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'setting'),
        ],
      ),
      body: screen[selectedIndex],
    );
  }
}
