import 'package:flutter/material.dart';
import 'package:habits_app/Screens/pages/habitsPage.dart';
import 'package:habits_app/Screens/pages/homePage.dart';
import 'package:habits_app/Screens/pages/profilePage.dart';
import 'package:habits_app/Screens/pages/progressPage.dart';

class NavigationScreen extends StatefulWidget {
  NavigationScreen({super.key, required this.currentIndex});
  int currentIndex;
  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

const List<Widget> screens = [
  HomePage(),
  ProgressPage(),
  Habitspage(),
  ProfilePage()
];

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: widget.currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.deepPurpleAccent,
        currentIndex: widget.currentIndex,
        onTap: (index) {
          setState(() {
            widget.currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: "Progress"),
          BottomNavigationBarItem(icon: Icon(Icons.timeline), label: "Habits"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
      ),
    );
  }
}
