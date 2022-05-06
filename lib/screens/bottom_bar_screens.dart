import 'package:flutter/material.dart';
import 'package:school_monk/screens/profile_screen.dart';
import 'package:school_monk/screens/school_screen.dart';

import 'category_screen.dart';
import 'home_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _pageSelected = 0;

  List<Widget> screens = [
    HomeScreen(),
    CategoryScreen(),
    SchoolScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_pageSelected],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageSelected,
        onTap: (value) {
          setState(() {
            _pageSelected = value;
          });
        },
        selectedItemColor: const Color(0xffF0C742),
        unselectedItemColor: Colors.grey.shade500,
        type: BottomNavigationBarType.fixed,
        elevation: 20,
        selectedIconTheme: const IconThemeData(size: 30),
        unselectedIconTheme: const IconThemeData(size: 30),
        unselectedLabelStyle: TextStyle(color: Colors.grey.shade500),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view), label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "School"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
