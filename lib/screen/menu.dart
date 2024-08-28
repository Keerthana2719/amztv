import 'package:amazon/screen/more.dart';
import 'package:amazon/screen/search.dart';
import 'package:amazon/screen/watchlist.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Home(),
    Search(),
    Watchlist(),
    More(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // Ensures fixed color background
          backgroundColor: Colors.black, // Black background for BottomNavigationBar
          selectedItemColor: Colors.pink, // Color for selected icon and label
          unselectedItemColor: Colors.white, // Color for unselected icon and label
          currentIndex: _selectedIndex,
          selectedLabelStyle: const TextStyle(color: Colors.pink),
          unselectedLabelStyle: const TextStyle(color: Colors.white),
          onTap: _onItemTapped,
          selectedIconTheme: const IconThemeData(
            color: Colors.pink, // Ensures selected icon is pink
            size: 27.0,
          ),
          unselectedIconTheme: const IconThemeData(
            color: Colors.white, // Ensures unselected icon is white
            size: 24.0,
          ),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Watchlist',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_on),
              label: 'More',
            ),
          ],
        ),
      ),
    );
  }
}
