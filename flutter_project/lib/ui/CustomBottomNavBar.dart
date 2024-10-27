import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabChange;

  const CustomBottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onTabChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: GNav(
          padding: EdgeInsets.all(15),
          gap: 10,
          selectedIndex: selectedIndex,
          onTabChange: onTabChange,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
              backgroundColor: Colors.black12,
            ),
            GButton(
              icon: Icons.library_music,
              text: 'Library',
              backgroundColor: Colors.lightGreen,
            ),
            GButton(
              icon: Icons.radio,
              text: 'Radio',
              backgroundColor: Colors.deepPurpleAccent,
            ),
            GButton(
              icon: Icons.bar_chart,
              text: 'Chart',
              backgroundColor: Colors.teal,
            ),
            GButton(
              icon: Icons.supervised_user_circle_outlined,
              text: 'User',
              backgroundColor: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}