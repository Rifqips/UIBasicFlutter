import 'package:flutter/material.dart';

class SampleNavbar extends StatefulWidget {
  const SampleNavbar({super.key});

  @override
  State<SampleNavbar> createState() => _SampleNavbarState();
}

class _SampleNavbarState extends State<SampleNavbar> {
  int selectedIndex = 0;
  void _onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sample Navbar'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.deepPurple[50],
          iconSize: 30,
          showUnselectedLabels: false,
          selectedItemColor: Colors.purple,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: _onTap,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'akun',
            ),
          ],
        ));
  }
}
