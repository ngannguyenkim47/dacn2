import 'package:flutter_project/ui/CustomBottomNavBar.dart';
import 'package:flutter_project/ui/SideMenu.dart';
import 'package:flutter_project/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/ui/screens/chart.dart';
import 'package:flutter_project/ui/screens/home.dart';
import 'package:flutter_project/ui/screens/library.dart';
import 'package:flutter_project/ui/screens/radio.dart';
import 'package:flutter_project/ui/screens/user.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _selectedIndex = 0; // Để lưu vị trí của tab được chọn

  // Danh sách tên các tab
  final List<String> _tabTitles = [
    'Home',
    'Library',
    'Radio',
    'Chart',
    'User',
  ];

  // Các trang tương ứng với từng tab
  final List<Widget> _pages = [
    HomeScreen(),
    LibraryScreen(),
    RadioScreen(),
    ChartScreen(),
    UserScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    _tabTitles[_selectedIndex],
                    style: TextStyle(
                      color: Constants.blackColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              Icon(
                Icons.notifications,
                color: Constants.blackColor,
                size: 30,
              )
            ],
          )),
      body: IndexedStack(
        index: _selectedIndex, // Hiển thị trang tương ứng với tab đã chọn
        children: _pages,
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index; // Cập nhật tab khi nhấn
          });
        },
      ),
    );
  }
}
