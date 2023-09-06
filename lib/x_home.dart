import 'package:flutter/material.dart';
import 'package:x_clone/pages/communities_screen.dart';
import 'package:x_clone/pages/explore_screen.dart';
import 'package:x_clone/pages/home_screen.dart';
import 'package:x_clone/pages/inbox_screen.dart';
import 'package:x_clone/pages/notification_screen.dart';

class XHome extends StatelessWidget {
  const XHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: XBottomNavigationBar(),
    );
  }
}

class XBottomNavigationBar extends StatefulWidget {
  const XBottomNavigationBar({super.key});

  @override
  State<XBottomNavigationBar> createState() =>
      _XBottomNavigationBar();
}

class _XBottomNavigationBar extends State<XBottomNavigationBar>{

  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    // homeScreen(),
    // exploreScreen(),
    // communityScreen(),
    // notificationScreen(),
    // inboxScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("X"),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email),
            label: 'Inbox',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}