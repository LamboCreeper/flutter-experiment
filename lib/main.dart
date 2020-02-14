import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) => (
    CupertinoApp(
      home: HomeScreen()
    )
  );
}

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) => (
    CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.news),
          title: Text("Feed")
        ),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bell),
            title: Text("Notifications")
        ),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            title: Text("Profile")
        )
      ]),
      tabBuilder: (BuildContext context, int i) => (
        CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text(i == 0 ? "Feed" : i == 1 ? "Notifications" : "Profile")
          ),
          child: Center(
            child: Text("Hello World")
          )
        )
      )
    )
  );
}