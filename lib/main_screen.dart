import 'package:flutter/material.dart';
import 'package:salad_works/account_screen.dart';
import 'package:salad_works/explore_screen.dart';
import 'package:salad_works/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomeScreen(),
    const ExploreScreen(),
    const AccountScreen(),
  ];

  // Fungsi untuk memperbarui halaman berdasarkan index dari BottomNavigationBar
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Saladworks',
          style: TextStyle(
            fontFamily: 'Modak',
          ),
        ),
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: _buttomNavigationBar(_currentIndex, _onTabTapped),
    );
  }
}

Widget _buttomNavigationBar(int currentIndex, Function(int) onTap) {
  return BottomNavigationBar(
    onTap: onTap,
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.explore),
        label: 'Explore',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Account',
      ),
    ],
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.grey.withOpacity(.60),
    selectedFontSize: 12.5,
    unselectedFontSize: 12,
    currentIndex: currentIndex,
  );
}
