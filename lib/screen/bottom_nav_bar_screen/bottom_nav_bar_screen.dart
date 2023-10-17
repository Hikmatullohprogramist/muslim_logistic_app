import 'package:flutter/material.dart';
import 'package:muslim_logistic_app/screen/home/home_screen.dart';
import 'package:muslim_logistic_app/screen/order/order_screen.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List<Widget> _screens = [
    HomeScreen(),
    OrderScreen(),
  ];
  int currItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currItem = value;
          });
        },
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        selectedIconTheme: const IconThemeData(color: Color(0xff02946B)),
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        selectedLabelStyle: const TextStyle(color: Color(0xff02946B)),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long_sharp), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Home"),
        ],
      ),
      body: _screens[currItem],
    );
  }
}
