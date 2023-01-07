import 'package:flutter/material.dart';
import 'package:moment/pages/chatpage.dart';
import 'package:moment/pages/feedpage.dart';
import 'package:moment/pages/profilepage.dart';
import 'package:moment/pages/searchpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //
  int _selectedIndex = 0; // индекс нижнего бара
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    FeedPage(),
    SearchPage(),
    ChatPage(),
    Center(child: Text('etc')),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline), label: 'chat'),
          BottomNavigationBarItem(icon: Icon(Icons.eco_outlined), label: 'etc'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'profile'),
        ],
      ),
    );
  }
}
