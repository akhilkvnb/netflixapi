import 'package:flutter/material.dart';
import 'package:netflix/screen_comingsoon.dart';
import 'package:netflix/screen_downloads.dart';
import 'package:netflix/screen_search.dart';
import 'package:netflix/screen_home.dart';

class ScreenBottom extends StatefulWidget {
  ScreenBottom({Key? key}) : super(key: key);

  @override
  State<ScreenBottom> createState() => _ScreenBottomState();
}

int _currentIndex = 0;

class _ScreenBottomState extends State<ScreenBottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: onTappedBar,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.collections),
              label: 'Coming soon',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.download_for_offline_rounded),
              label: 'Downloads',
            ),
          ]),
    );
  }

  final List<Widget> _children = [
    const Home(),
    const ScreenComkingsoon(),
    const ScreenSearch(),
    const ScreenDownloads()
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
