
import 'package:flutter_project/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/ui/screens/chart.dart';
import 'package:flutter_project/ui/screens/home.dart';
import 'package:flutter_project/ui/screens/library.dart';
import 'package:flutter_project/ui/screens/radio.dart';
import 'package:flutter_project/ui/screens/user.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}
  class _RootPageState extends State<RootPage> {
    int _selectedIndex = 0;  // Để lưu vị trí của tab được chọn

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
        appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu, color: Constants.blackColor, size: 30,),
                Text( _tabTitles[_selectedIndex], style: TextStyle(
                  color: Constants.blackColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),),
                Icon(Icons.notifications, color: Constants.blackColor, size: 30,)
              ],
            ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0.0,
        ),
        body: IndexedStack(
          index: _selectedIndex,  // Hiển thị trang tương ứng với tab đã chọn
          children: _pages,
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),   //khoang cach pading voi khung dth
            child: GNav(
              // backgroundColor: Colors.black,
              // color: Colors.white,
              // activeColor: Colors.white, //khi nhan vao mau chu doi
              // tabBackgroundColor: Colors.grey,  //mau bg khi nhan vao, muon dam nhat thi .shade...
              padding: EdgeInsets.all(15),
              gap: 10,
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;  // Cập nhật tab khi nhấn
                });
              },
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
                ),  // Sử dụng icon cụ thể
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
        ),
      );
    }
}