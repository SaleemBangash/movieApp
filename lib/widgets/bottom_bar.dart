// ignore_for_file: prefer_const_literals_to_create_immutables, deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app/screens/dashboard.dart';
import 'package:movie_app/screens/watch.dart';
import 'package:movie_app/screens/media_library.dart';

class BottomBar extends StatefulWidget {
  // final Widget body;
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  // GlobalKey globalKey = new GlobalKey(debugLabel: 'btm_app_bar');
  // int index = 0;
  // late final Widget? body;
  int _selectedIndex = 0;
  final List<Widget> screens = [Dashboard(), Watch(), MediaLibrary()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: widget.body,
      body: Center(
        child: screens[_selectedIndex], //New
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          // key: globalKey,
          type: BottomNavigationBarType.fixed,

          // currentIndex: _currentIndex,
          backgroundColor: Color.fromARGB(255, 22, 22, 29),

          selectedItemColor: Colors.white,
          // showSelectedLabels: false,
          // showUnselectedLabels: false,

          selectedLabelStyle:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 15),

          unselectedItemColor: Color.fromARGB(255, 121, 118, 118),
          iconSize: 25,
          // selectedLabelStyle: Colors.accents,
          // unselectedLabelStyle: textTheme.caption,
          // onTap: _onItemTapped,
          // currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.grid_view_rounded,
                size: 25,
              ),
              label: "Dashboard",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.video_library,
                size: 25,
              ),
              label: "Watch",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.format_list_bulleted,
                size: 25,
              ),
              label: "More",
            ),
          ],
          currentIndex: _selectedIndex,
          // selectedItemColor: Colors.black,
          // selectedFontSize: 20,

          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
