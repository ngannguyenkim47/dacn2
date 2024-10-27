
import 'package:flutter/material.dart';
import 'package:flutter_project/ui/screens/favourite_song.dart';
import 'package:flutter_project/ui/screens/history_song.dart';
import 'package:flutter_project/ui/screens/home.dart';
import 'package:flutter_project/ui/screens/theme_song.dart';
import 'package:flutter_project/ui/screens/top_song.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'nguyen thi kim ngan',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              accountEmail: Text(
                'ngan@gmail.com',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/user.png'),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home_rounded),
              title: Text('Trang chủ'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.star_rounded),
              title: Text('Top bài hát'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TopSongScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.topic_rounded),
              title: Text('Thể loại và chủ đề'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThemeSongScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite_rounded),
              title: Text('Yêu thích'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FavouriteSongScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.history_rounded),
              title: Text('Lịch sử'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HistorySongScreen()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
