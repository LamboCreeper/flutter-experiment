import 'package:flutter/material.dart';

import './widgets/pages/notificationspage.dart';
import './widgets/pages/profile_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) => (
    MaterialApp(
      home: HomeScreen()
    )
  );
}

const pages = ["Feed", "Notifications", "Profile"];

class HomeScreen extends StatefulWidget {
  @override
  createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) => (
    Scaffold(
      appBar: AppBar(
        title: Text(pages[_selectedIndex])
      ),
      body: Center(
        child: renderPage(_selectedIndex)
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Feed")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              title: Text("Notifications")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile")
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        }
      )
    )
  );
}

Widget renderPage(int pageIndex) {
  switch(pageIndex) {
    case 1:
      return NotificationsPage();
    case 2:
      return ProfilePage();
    default:
      return Text("Not Implimented");
  }
}