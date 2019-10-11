import 'package:flutter/material.dart';
import 'package:planner/ui/bottom_navy_bar.dart';
//import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:planner/ui/pages/Home.dart';
import 'package:planner/ui/pages/massages.dart';
import 'package:planner/ui/pages/setting.dart';
import 'package:planner/ui/pages/user.dart';


class Homemain extends StatefulWidget {
  Homemain({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomemainState createState() => _HomemainState();
}

class _HomemainState extends State<Homemain> {

  int currentIndex = 3;
  int selected = 3;
  List pages = [Setting(),User(),Massage(),Home()];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.settings_applications),
            title: Text('تنظیمات'),
            activeColor: Color(0xFF4563DB),
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.featured_play_list),
              title: Text('برنامه ها'),
              activeColor: Color(0xFF4563DB),
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.message),
              title: Text('پیام ها'),
              activeColor: Color(0xFF4563DB),
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text('خانه'),
              activeColor: Color(0xFF4563DB),
          ),
        ],
      ),
    );
  }
}